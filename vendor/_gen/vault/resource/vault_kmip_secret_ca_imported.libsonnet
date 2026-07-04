{
  '#new':: { 'function': { help: |||
    Manage imported KMIP secret engine CAs.
  ||| } },
  local outerSelf = self,
  new(terraformName, ca_pem, name, path):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_kmip_secret_ca_imported+: {
        [terraformName]+: {
          ca_pem: ca_pem,
          name: name,
          path: path,
        },
      },
    },
  },
  functions(terraformName):: {
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
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_kmip_secret_ca_imported.%s%s }' % [terraformName, suffix],
    fields:: {
      '#ca_pem':: { 'function': { help: |||
        CA certificate in PEM format.
      ||| } },
      ca_pem(suffix=''):: refSelf.plain('.ca_pem%s' % suffix),
      '#name':: { 'function': { help: |||
        Name to identify the CA.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#path':: { 'function': { help: |||
        Path where KMIP backend is mounted.
      ||| } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      '#role_field':: { 'function': { help: |||
        The field in the certificate to use for the role (CN, O, OU, or UID). Must specify exactly one of role_name or role_field.
      ||| } },
      role_field(suffix=''):: refSelf.plain('.role_field%s' % suffix),
      '#role_name':: { 'function': { help: |||
        The role name to associate with this CA. Must specify exactly one of role_name or role_field.
      ||| } },
      role_name(suffix=''):: refSelf.plain('.role_name%s' % suffix),
      '#scope_field':: { 'function': { help: |||
        The field in the certificate to use for the scope (CN, O, OU, or UID). Must specify exactly one of scope_name or scope_field.
      ||| } },
      scope_field(suffix=''):: refSelf.plain('.scope_field%s' % suffix),
      '#scope_name':: { 'function': { help: |||
        The scope name to associate with this CA. Must specify exactly one of scope_name or scope_field.
      ||| } },
      scope_name(suffix=''):: refSelf.plain('.scope_name%s' % suffix),
    },
  },
}
