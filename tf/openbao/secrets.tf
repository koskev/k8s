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
