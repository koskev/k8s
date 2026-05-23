terraform {
  required_version = ">= 1.10.0"
  backend "kubernetes" {
    secret_suffix = "authentik-state"
    config_path      = "~/.kube/config"
  }
  required_providers {
    sops = {
      source = "carlpett/sops"
      version = "~> 1.0"
    }
    authentik = {
      source = "goauthentik/authentik"
      version = "2026.2.0"
    }
  }
}

provider "authentik"  {
    url   = "https://auth.kokev.de"
}
provider "sops" {}

data "authentik_flow" "default-authorization-flow" {
  slug = "default-provider-authorization-implicit-consent"
}

data "authentik_flow" "default-invalidation-flow" {
  slug = "default-provider-invalidation-flow"
}

data "authentik_property_mapping_provider_scope" "profile" {
  managed = "goauthentik.io/providers/oauth2/scope-profile"
}

data "authentik_property_mapping_provider_scope" "email" {
  managed = "goauthentik.io/providers/oauth2/scope-email"
}

data "authentik_property_mapping_provider_scope" "openid" {
  managed = "goauthentik.io/providers/oauth2/scope-openid"
}

data "authentik_certificate_key_pair" "generated" {
  name = "authentik Self-signed Certificate"
}

data "sops_file" "argocd_secret" {
  source_file = "../openbao/openbao_secrets/argocd-secret.enc.yaml"
}

data "sops_file" "oidc_secret" {
  source_file = "../openbao/openbao_secrets/oidc.enc.yaml"
}

resource "authentik_provider_oauth2" "name" {
  name               = "argocd"
  client_id          = "argocd"
  client_secret      = data.sops_file.argocd_secret.data["dex.authentik.clientSecret"]
  authorization_flow = data.authentik_flow.default-authorization-flow.id
  invalidation_flow   = data.authentik_flow.default-invalidation-flow.id
  allowed_redirect_uris = [
    {
    "matching_mode" = "strict"
    "url": "https://argocd.kokev.de/api/dex/callback"
  },
    {
    "matching_mode" = "strict"
    "url": "https://localhost:8085/auth/callback"
  }
  ]
  property_mappings = [
    data.authentik_property_mapping_provider_scope.profile.id,
    data.authentik_property_mapping_provider_scope.email.id,
    data.authentik_property_mapping_provider_scope.openid.id,
  ]
  signing_key = data.authentik_certificate_key_pair.generated.id
}

resource "authentik_application" "argocd" {
  name              = "argocd"
  slug              = "argocd"
  protocol_provider = authentik_provider_oauth2.name.id
}

resource "authentik_provider_oauth2" "openbao" {
  name               = "openbao"
  client_id          = "openbao"
  client_secret      = data.sops_file.oidc_secret.data["openbao"]
  authorization_flow = data.authentik_flow.default-authorization-flow.id
  invalidation_flow   = data.authentik_flow.default-invalidation-flow.id
  allowed_redirect_uris = [
    {
    "matching_mode" = "strict"
    "url": "https://vault.kokev.de/ui/vault/auth/oidc/oidc/callback"
    },
    {
    "matching_mode" = "strict"
    "url": "https://vault.kokev.de/oidc/callback"
    },
    {
    "matching_mode" = "strict"
    "url": "http://localhost:8250/oidc/callback"
  }
  ]
  property_mappings = [
    data.authentik_property_mapping_provider_scope.profile.id,
    data.authentik_property_mapping_provider_scope.email.id,
    data.authentik_property_mapping_provider_scope.openid.id,
  ]
  signing_key = data.authentik_certificate_key_pair.generated.id
  // XXX: Grant Type is missing from the provider T_T
}

resource "authentik_application" "openbao" {
  name              = "openbao"
  slug              = "openbao"
  protocol_provider = authentik_provider_oauth2.openbao.id
}

data "authentik_group" "admins" {
  name = "authentik Admins"
}

resource "authentik_group" "argocd_admin" {
  name = "ArgoCD Admins"
}

resource "authentik_user" "kevin" {
  username = "kevin"
  name     = "kevin"
  groups   = [authentik_group.argocd_admin.id, data.authentik_group.admins.id]
}
