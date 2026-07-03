{
  new(terraformName, backend):: {
    _type:: 'tf',
    resource+: {
      vault_pki_secret_backend_acme_eab+: { [terraformName]+: {
        backend: backend,
      } },
    },
    '#withAcmeDirectory':: { 'function': { help: |||
      The ACME directory to which the key belongs 
    ||| } },
    withAcmeDirectory(value):: self {
      resource+: {
        vault_pki_secret_backend_acme_eab+: { [terraformName]+: { acme_directory: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      The PKI secret backend the resource belongs to 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_pki_secret_backend_acme_eab+: { [terraformName]+: { backend: value } },
      },
    },
    '#withCreatedOn':: { 'function': { help: |||
      An RFC3339 formatted date time when the EAB token was created 
    ||| } },
    withCreatedOn(value):: self {
      resource+: {
        vault_pki_secret_backend_acme_eab+: { [terraformName]+: { created_on: value } },
      },
    },
    '#withEabId':: { 'function': { help: |||
      The identifier of a specific ACME EAB token 
    ||| } },
    withEabId(value):: self {
      resource+: {
        vault_pki_secret_backend_acme_eab+: { [terraformName]+: { eab_id: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_pki_secret_backend_acme_eab+: { [terraformName]+: { id: value } },
      },
    },
    '#withIssuer':: { 'function': { help: |||
      Specifies the issuer reference to use for directory path 
    ||| } },
    withIssuer(value):: self {
      resource+: {
        vault_pki_secret_backend_acme_eab+: { [terraformName]+: { issuer: value } },
      },
    },
    '#withKey':: { 'function': { help: |||
      The ACME EAB token 
    ||| } },
    withKey(value):: self {
      resource+: {
        vault_pki_secret_backend_acme_eab+: { [terraformName]+: { key: value } },
      },
    },
    '#withKeyType':: { 'function': { help: |||
      The key type of the EAB key 
    ||| } },
    withKeyType(value):: self {
      resource+: {
        vault_pki_secret_backend_acme_eab+: { [terraformName]+: { key_type: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_secret_backend_acme_eab+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRole':: { 'function': { help: |||
      Specifies the role to use for directory path 
    ||| } },
    withRole(value):: self {
      resource+: {
        vault_pki_secret_backend_acme_eab+: { [terraformName]+: { role: value } },
      },
    },
  },
}
