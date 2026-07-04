{
  '#new':: { 'function': { help: |||
    Provides an ephemeral resource to read a DB Secret from Vault.
  ||| } },
  local outerSelf = self,
  new(terraformName, mount, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    ephemeral+: {
      vault_database_secret+: {
        [terraformName]+: {
          mount: mount,
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withMount':: { 'function': { help: |||
      Mount path for the DB engine in Vault.
    ||| } },
    withMount(value):: self {
      ephemeral+: {
        vault_database_secret+: { [terraformName]+: { mount: value } },
      },
    },
    '#withMountId':: { 'function': { help: |||
      Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
    ||| } },
    withMountId(value):: self {
      ephemeral+: {
        vault_database_secret+: { [terraformName]+: { mount_id: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Specifies the name of the role to create credentials against.
    ||| } },
    withName(value):: self {
      ephemeral+: {
        vault_database_secret+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      ephemeral+: {
        vault_database_secret+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_database_secret.%s%s }' % [terraformName, suffix],
    fields:: {
      '#client_certificate':: { 'function': { help: |||
        Client certificate for the newly created DB user. Only returned when credential_type is 'client_certificate'.
      ||| } },
      client_certificate(suffix=''):: refSelf.plain('.client_certificate%s' % suffix),
      '#mount':: { 'function': { help: |||
        Mount path for the DB engine in Vault.
      ||| } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#mount_id':: { 'function': { help: |||
        Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
      ||| } },
      mount_id(suffix=''):: refSelf.plain('.mount_id%s' % suffix),
      '#name':: { 'function': { help: |||
        Specifies the name of the role to create credentials against.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#password':: { 'function': { help: |||
        Password for the newly created DB user.
      ||| } },
      password(suffix=''):: refSelf.plain('.password%s' % suffix),
      '#private_key':: { 'function': { help: |||
        Private key for the newly created DB user. Only returned when credential_type is 'client_certificate'.
      ||| } },
      private_key(suffix=''):: refSelf.plain('.private_key%s' % suffix),
      '#private_key_type':: { 'function': { help: |||
        Type of private key (e.g., 'rsa', 'ec'). Only returned when credential_type is 'client_certificate'.
      ||| } },
      private_key_type(suffix=''):: refSelf.plain('.private_key_type%s' % suffix),
      '#rsa_private_key':: { 'function': { help: |||
        RSA private key for the newly created DB user. Only returned when credential_type is 'rsa_private_key'.
      ||| } },
      rsa_private_key(suffix=''):: refSelf.plain('.rsa_private_key%s' % suffix),
      '#username':: { 'function': { help: |||
        Username for the newly created DB user.
      ||| } },
      username(suffix=''):: refSelf.plain('.username%s' % suffix),
    },
  },
}
