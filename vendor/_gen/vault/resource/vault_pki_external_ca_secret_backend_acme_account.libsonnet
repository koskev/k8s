{
  new(terraformName, directory_url, email_contacts, mount, name):: {
    _type:: 'tf',
    resource+: {
      vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: {
        directory_url: directory_url,
        email_contacts: email_contacts,
        mount: mount,
        name: name,
      } },
    },
    '#withActiveKeyVersion':: { 'function': { help: |||
      Version of account key, starts at zero 
    ||| } },
    withActiveKeyVersion(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: { active_key_version: value } },
      },
    },
    '#withDirectoryUrl':: { 'function': { help: |||
      ACME Directory URL. 
    ||| } },
    withDirectoryUrl(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: { directory_url: value } },
      },
    },
    '#withEabKey':: { 'function': { help: |||
      An url base64 encoded external binding token to create the initial account. 
    ||| } },
    withEabKey(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: { eab_key: value } },
      },
    },
    '#withEabKid':: { 'function': { help: |||
      The external binding key ID to create the initial account. 
    ||| } },
    withEabKid(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: { eab_kid: value } },
      },
    },
    '#withEmailContacts':: { 'function': { help: |||
      Email addresses for the ACME account. 
    ||| } },
    withEmailContacts(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: { email_contacts: value } },
      },
    },
    '#withKeyType':: { 'function': { help: |||
      Key type to generate for the account key. Valid values are `ec-256`, `ec-384`, `ec-521`, `rsa-2048`, `rsa-4096`, `rsa-8192`. 
    ||| } },
    withKeyType(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: { key_type: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      The path where the PKI secret backend is mounted. 
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: { mount: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the ACME account. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withTrustedCa':: { 'function': { help: |||
      Trusted CA certificates for the ACME server. 
    ||| } },
    withTrustedCa(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: { trusted_ca: value } },
      },
    },
  },
}
