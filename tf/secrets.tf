terraform {
  required_version = "~> 1.9.0"
  required_providers {
    sops = {
      source = "carlpett/sops"
      version = "~> 1.0"
    }
    vault = {
      source = "hashicorp/vault"
      version = "~> 4.7.0"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.36.0"
    }
  }
}

provider "vault" {}
provider "sops" {}
provider "kubernetes" {
  config_path    = "~/.kube/config"
}

resource "vault_auth_backend" "kubernetes" {
  type = "kubernetes"
}

resource "vault_kubernetes_auth_backend_config" "example" {
  backend                = vault_auth_backend.kubernetes.path
  kubernetes_host        = "https://kubernetes.default.svc"
  issuer                 = "api"
  disable_iss_validation = "true"
}

resource "vault_policy" "external-secrets" {
  name = "external-secrets"

  policy = <<EOT
path "secrets/*" {
  capabilities = ["create", "read", "update", "patch", "delete", "list"]
}
EOT
}

resource "vault_kubernetes_auth_backend_role" "example" {
  backend                          = vault_auth_backend.kubernetes.path
  role_name                        = "external-secrets-role"
  bound_service_account_names      = ["external-secrets"]
  bound_service_account_namespaces = ["external-secrets"]
  token_ttl                        = 3600
  token_policies                   = ["external-secrets"]
}

data "sops_file" "secrets" {
  for_each = fileset("${path.module}/secrets", "*/*.{json,yaml}")
  source_file = "secrets/${each.value}"
}

data "sops_file" "openbao_secrets" {
  for_each = fileset(path.module, "openbao_secrets/*.{json,yaml}")
  source_file = each.value
}


resource "vault_mount" "secrets" {
  path        = "secrets"
  type        = "kv"
  options     = { version = "2" }
  description = "Kubernetes secrets"
}

resource "vault_kv_secret_v2" "secrets" {
  for_each = data.sops_file.openbao_secrets
  mount                      = vault_mount.secrets.path
  name                       = split(".", basename(each.key))[0]
  data_json                  =  jsonencode(each.value.data)
}

resource "kubernetes_secret" "secrets" {
  for_each = data.sops_file.secrets
  metadata {
    name                       = split(".", basename(each.key))[0]
    namespace = dirname(each.key)
  }
  data = each.value.data
}
