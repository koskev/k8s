{
  new(terraformName, name, path, public_key):: {
    _type:: 'tf',
    data+: {
      vault_ssh_secret_backend_sign+: { [terraformName]+: {
        name: name,
        path: path,
        public_key: public_key,
      } },
    },
    '#withCertType':: { 'function': { help: |||
      Specifies the type of certificate to be created; either "user" or "host". 
    ||| } },
    withCertType(value):: self {
      data+: {
        vault_ssh_secret_backend_sign+: { [terraformName]+: { cert_type: value } },
      },
    },
    '#withCriticalOptions':: { 'function': { help: |||
      Specifies a map of the critical options that the certificate should be signed for. Defaults to none. 
    ||| } },
    withCriticalOptions(value):: self {
      data+: {
        vault_ssh_secret_backend_sign+: { [terraformName]+: { critical_options: value } },
      },
    },
    '#withExtensions':: { 'function': { help: |||
      Specifies a map of the extensions that the certificate should be signed for. Defaults to none. 
    ||| } },
    withExtensions(value):: self {
      data+: {
        vault_ssh_secret_backend_sign+: { [terraformName]+: { extensions: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_ssh_secret_backend_sign+: { [terraformName]+: { id: value } },
      },
    },
    '#withKeyId':: { 'function': { help: |||
      Specifies the key id that the created certificate should have. If not specified, the display name of the token will be used. 
    ||| } },
    withKeyId(value):: self {
      data+: {
        vault_ssh_secret_backend_sign+: { [terraformName]+: { key_id: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Specifies the name of the role to sign. 
    ||| } },
    withName(value):: self {
      data+: {
        vault_ssh_secret_backend_sign+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_ssh_secret_backend_sign+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Full path where SSH backend is mounted. 
    ||| } },
    withPath(value):: self {
      data+: {
        vault_ssh_secret_backend_sign+: { [terraformName]+: { path: value } },
      },
    },
    '#withPublicKey':: { 'function': { help: |||
      Specifies the SSH public key that should be signed. 
    ||| } },
    withPublicKey(value):: self {
      data+: {
        vault_ssh_secret_backend_sign+: { [terraformName]+: { public_key: value } },
      },
    },
    '#withSerialNumber':: { 'function': { help: |||
      The serial number of the certificate returned from Vault 
    ||| } },
    withSerialNumber(value):: self {
      data+: {
        vault_ssh_secret_backend_sign+: { [terraformName]+: { serial_number: value } },
      },
    },
    '#withSignedKey':: { 'function': { help: |||
      The signed certificate returned from Vault 
    ||| } },
    withSignedKey(value):: self {
      data+: {
        vault_ssh_secret_backend_sign+: { [terraformName]+: { signed_key: value } },
      },
    },
    '#withTtl':: { 'function': { help: |||
      Specifies the Requested Time To Live. Cannot be greater than the role's max_ttl value. If not provided, the role's ttl value will be used. Note that the role values default to system values if not explicitly set. 
    ||| } },
    withTtl(value):: self {
      data+: {
        vault_ssh_secret_backend_sign+: { [terraformName]+: { ttl: value } },
      },
    },
    '#withValidPrincipals':: { 'function': { help: |||
      Specifies valid principals, either usernames or hostnames, that the certificate should be signed for. Required unless the role has specified allow_empty_principals or a value has been set for either the default_user or default_user_template role parameters. 
    ||| } },
    withValidPrincipals(value):: self {
      data+: {
        vault_ssh_secret_backend_sign+: { [terraformName]+: { valid_principals: value } },
      },
    },
  },
}
