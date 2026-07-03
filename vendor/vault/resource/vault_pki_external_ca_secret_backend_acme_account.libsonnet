{
  new(terraformName, mount, directory_url, name, email_contacts):: {
    _type:: 'tf',
    resource+: {
      vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: {
        mount: mount,
        directory_url: directory_url,
        name: name,
        email_contacts: email_contacts,
      } },
    },
    withNamespace(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: { namespace: value } },
      },
    },
    withEabKey(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: { eab_key: value } },
      },
    },
    withMount(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: { mount: value } },
      },
    },
    withActiveKeyVersion(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: { active_key_version: value } },
      },
    },
    withEabKid(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: { eab_kid: value } },
      },
    },
    withDirectoryUrl(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: { directory_url: value } },
      },
    },
    withKeyType(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: { key_type: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: { name: value } },
      },
    },
    withTrustedCa(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: { trusted_ca: value } },
      },
    },
    withEmailContacts(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: { email_contacts: value } },
      },
    },
  },
}
