{
  '#new':: { 'function': { help: |||
    Provides an ephemeral resource to read AWS static credentials from Vault.
  ||| } },
  local outerSelf = self,
  new(terraformName, mount, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    ephemeral+: {
      vault_aws_static_access_credentials+: {
        [terraformName]+: {
          mount: mount,
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withMount':: { 'function': { help: |||
      Mount path for the AWS secret engine in Vault.
    ||| } },
    withMount(value):: self {
      ephemeral+: {
        vault_aws_static_access_credentials+: { [terraformName]+: { mount: value } },
      },
    },
    '#withMountId':: { 'function': { help: |||
      Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
    ||| } },
    withMountId(value):: self {
      ephemeral+: {
        vault_aws_static_access_credentials+: { [terraformName]+: { mount_id: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the static role.
    ||| } },
    withName(value):: self {
      ephemeral+: {
        vault_aws_static_access_credentials+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      ephemeral+: {
        vault_aws_static_access_credentials+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_aws_static_access_credentials.%s%s }' % [terraformName, suffix],
    fields:: {
      '#access_key':: { 'function': { help: |||
        AWS access key ID read from Vault.
      ||| } },
      access_key(suffix=''):: refSelf.plain('.access_key%s' % suffix),
      '#mount':: { 'function': { help: |||
        Mount path for the AWS secret engine in Vault.
      ||| } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#mount_id':: { 'function': { help: |||
        Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
      ||| } },
      mount_id(suffix=''):: refSelf.plain('.mount_id%s' % suffix),
      '#name':: { 'function': { help: |||
        Name of the static role.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#secret_key':: { 'function': { help: |||
        AWS secret key read from Vault.
      ||| } },
      secret_key(suffix=''):: refSelf.plain('.secret_key%s' % suffix),
    },
  },
}
