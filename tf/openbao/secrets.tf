resource "vault_auth_backend" "kubernetes" {
  type = "kubernetes"
}

resource "vault_kubernetes_auth_backend_config" "example" {
  backend                = vault_auth_backend.kubernetes.path
  kubernetes_host        = "https://kubernetes.default.svc"
  issuer                 = "api"
  disable_iss_validation = "true"
}

data "sops_file" "secrets" {
  for_each = fileset("${path.module}/secrets", "*/*.{json,yaml}")
  source_file = "secrets/${each.value}"
}

data "sops_file" "openbao_secrets" {
  for_each = fileset(path.module, "openbao_secrets/**/*.{json,yaml}")
  source_file = each.value
}

data "sops_file" "luks" {
  for_each = fileset(path.module, "luks/*.{json,yaml}")
  source_file = each.value
}

data "sops_file" "system" {
  for_each = fileset(path.module, "system/*.{json,yaml}")
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
  name                       = split(".", trimprefix(each.key, "openbao_secrets/"))[0]
  data_json                  =  jsonencode(each.value.data)
}

resource "kubernetes_secret_v1" "secrets" {
  for_each = data.sops_file.secrets
  metadata {
    name                       = split(".", basename(each.key))[0]
    namespace = dirname(each.key)
  }
  data = each.value.data
}

resource "vault_mount" "system" {
  path        = "system"
  type        = "kv"
  options     = { version = "2" }
  description = "Luks encryption keys"
}

resource "vault_kv_secret_v2" "system" {
  for_each = data.sops_file.system
  mount                      = vault_mount.system.path
  name                       = split(".", basename(each.key))[0]
  data_json                  =  jsonencode(each.value.data)
}

resource "vault_mount" "luks" {
  path        = "luks"
  type        = "kv"
  options     = { version = "2" }
  description = "Luks encryption keys"
}

resource "vault_kv_secret_v2" "luks" {
  for_each = data.sops_file.luks
  mount                      = vault_mount.luks.path
  name                       = split(".", basename(each.key))[0]
  data_json                  =  jsonencode(each.value.data)
}

resource "vault_policy" "luks" {
  for_each = data.sops_file.luks
  name                       = split(".", basename(each.key))[0]
  policy = <<EOT
  path "luks/data/${split(".", basename(each.key))[0]}*" {
    capabilities = ["read", "list"]
  }
  EOT
}
resource "vault_auth_backend" "approle" {
  type = "approle"
}

resource "vault_approle_auth_backend_role" "luks" {
  for_each = data.sops_file.luks
  role_name= split(".", basename(each.key))[0]
  backend         = vault_auth_backend.approle.path
  token_policies  = [vault_policy.luks[each.key].id]
}

data "sops_file" "glusterfs_pki_root_ca" {
  source_file = "pki/glusterfs_root_ca.pem.enc"
  input_type = "raw"
}

data "sops_file" "glusterfs_pki_int_ca" {
  source_file = "pki/glusterfs_int_ca.pem.enc"
  input_type = "raw"
}

resource "vault_mount" "glusterfs_pki" {
  path = "glusterfs_pki"
  type = "pki"
}

resource "vault_pki_secret_backend_config_ca" "glusterfs_root_ca" {
  backend    = vault_mount.glusterfs_pki.path
  pem_bundle = data.sops_file.glusterfs_pki_root_ca.raw
}

resource "vault_pki_secret_backend_config_ca" "glusterfs_int_ca" {
  backend    = vault_mount.glusterfs_pki.path
  pem_bundle = data.sops_file.glusterfs_pki_int_ca.raw
}


resource "vault_pki_secret_backend_config_issuers" "config" {
  backend    = vault_mount.glusterfs_pki.path
  # TODO: Get from data source
  default    = "5099e2cf-1263-31c4-1c00-6a10f712cb62"
}
