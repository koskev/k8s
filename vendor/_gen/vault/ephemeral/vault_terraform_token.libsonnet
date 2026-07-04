{
  '#new':: { 'function': { help: |||
    Provides an ephemeral resource to read a Terraform Token from Vault.
  ||| } },
  local outerSelf = self,
  new(terraformName, role_name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    ephemeral+: {
      vault_terraform_token+: {
        [terraformName]+: {
          role_name: role_name,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withMount':: { 'function': { help: |||
      Mount path for the Terraform engine in Vault. Default is `terraform`.
    ||| } },
    withMount(value):: self {
      ephemeral+: {
        vault_terraform_token+: { [terraformName]+: { mount: value } },
      },
    },
    '#withMountId':: { 'function': { help: |||
      Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
    ||| } },
    withMountId(value):: self {
      ephemeral+: {
        vault_terraform_token+: { [terraformName]+: { mount_id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      ephemeral+: {
        vault_terraform_token+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRoleName':: { 'function': { help: |||
      Specifies the name of the role to create credentials against.
    ||| } },
    withRoleName(value):: self {
      ephemeral+: {
        vault_terraform_token+: { [terraformName]+: { role_name: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_terraform_token.%s%s }' % [terraformName, suffix],
    fields:: {
      '#mount':: { 'function': { help: |||
        Mount path for the Terraform engine in Vault. Default is `terraform`.
      ||| } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#mount_id':: { 'function': { help: |||
        Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
      ||| } },
      mount_id(suffix=''):: refSelf.plain('.mount_id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#role_name':: { 'function': { help: |||
        Specifies the name of the role to create credentials against.
      ||| } },
      role_name(suffix=''):: refSelf.plain('.role_name%s' % suffix),
      '#token':: { 'function': { help: |||
        Token requested from Vault.
      ||| } },
      token(suffix=''):: refSelf.plain('.token%s' % suffix),
    },
  },
}
