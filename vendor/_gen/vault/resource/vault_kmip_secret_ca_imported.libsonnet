{
  new(terraformName, ca_pem, name, path):: {
    _type:: 'tf',
    resource+: {
      vault_kmip_secret_ca_imported+: { [terraformName]+: {
        ca_pem: ca_pem,
        name: name,
        path: path,
      } },
    },
    '#withCaPem':: { 'function': { help: |||
      CA certificate in PEM format. 
    ||| } },
    withCaPem(value):: self {
      resource+: {
        vault_kmip_secret_ca_imported+: { [terraformName]+: { ca_pem: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name to identify the CA. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_kmip_secret_ca_imported+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_kmip_secret_ca_imported+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Path where KMIP backend is mounted. 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_kmip_secret_ca_imported+: { [terraformName]+: { path: value } },
      },
    },
    '#withRoleField':: { 'function': { help: |||
      The field in the certificate to use for the role (CN, O, OU, or UID). Must specify exactly one of role_name or role_field. 
    ||| } },
    withRoleField(value):: self {
      resource+: {
        vault_kmip_secret_ca_imported+: { [terraformName]+: { role_field: value } },
      },
    },
    '#withRoleName':: { 'function': { help: |||
      The role name to associate with this CA. Must specify exactly one of role_name or role_field. 
    ||| } },
    withRoleName(value):: self {
      resource+: {
        vault_kmip_secret_ca_imported+: { [terraformName]+: { role_name: value } },
      },
    },
    '#withScopeField':: { 'function': { help: |||
      The field in the certificate to use for the scope (CN, O, OU, or UID). Must specify exactly one of scope_name or scope_field. 
    ||| } },
    withScopeField(value):: self {
      resource+: {
        vault_kmip_secret_ca_imported+: { [terraformName]+: { scope_field: value } },
      },
    },
    '#withScopeName':: { 'function': { help: |||
      The scope name to associate with this CA. Must specify exactly one of scope_name or scope_field. 
    ||| } },
    withScopeName(value):: self {
      resource+: {
        vault_kmip_secret_ca_imported+: { [terraformName]+: { scope_name: value } },
      },
    },
  },
}
