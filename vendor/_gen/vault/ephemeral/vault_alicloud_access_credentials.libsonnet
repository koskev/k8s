{
  '#new':: { 'function': { help: |||
    Provides an ephemeral resource to generate AliCloud credentials from Vault.
  ||| } },
  local outerSelf = self,
  new(terraformName, mount, role):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    ephemeral+: {
      vault_alicloud_access_credentials+: {
        [terraformName]+: {
          mount: mount,
          role: role,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withMount':: { 'function': { help: |||
      Mount path for the AliCloud secret engine in Vault.
    ||| } },
    withMount(value):: self {
      ephemeral+: {
        vault_alicloud_access_credentials+: { [terraformName]+: { mount: value } },
      },
    },
    '#withMountId':: { 'function': { help: |||
      Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
    ||| } },
    withMountId(value):: self {
      ephemeral+: {
        vault_alicloud_access_credentials+: { [terraformName]+: { mount_id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      ephemeral+: {
        vault_alicloud_access_credentials+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRole':: { 'function': { help: |||
      AliCloud Secret Role to read credentials from.
    ||| } },
    withRole(value):: self {
      ephemeral+: {
        vault_alicloud_access_credentials+: { [terraformName]+: { role: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_alicloud_access_credentials.%s%s }' % [terraformName, suffix],
    fields:: {
      '#access_key':: { 'function': { help: |||
        AliCloud access key ID read from Vault.
      ||| } },
      access_key(suffix=''):: refSelf.plain('.access_key%s' % suffix),
      '#expiration':: { 'function': { help: |||
        Expiration time for the credentials.
      ||| } },
      expiration(suffix=''):: refSelf.plain('.expiration%s' % suffix),
      '#lease_duration':: { 'function': { help: |||
        Lease duration in seconds relative to the time in lease_start_time.
      ||| } },
      lease_duration(suffix=''):: refSelf.plain('.lease_duration%s' % suffix),
      '#lease_id':: { 'function': { help: |||
        Lease identifier assigned by Vault.
      ||| } },
      lease_id(suffix=''):: refSelf.plain('.lease_id%s' % suffix),
      '#lease_renewable':: { 'function': { help: |||
        True if the duration of this lease can be extended through renewal.
      ||| } },
      lease_renewable(suffix=''):: refSelf.plain('.lease_renewable%s' % suffix),
      '#lease_start_time':: { 'function': { help: |||
        Time at which the lease was read, using the clock of the system where Terraform was running.
      ||| } },
      lease_start_time(suffix=''):: refSelf.plain('.lease_start_time%s' % suffix),
      '#mount':: { 'function': { help: |||
        Mount path for the AliCloud secret engine in Vault.
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
      '#role':: { 'function': { help: |||
        AliCloud Secret Role to read credentials from.
      ||| } },
      role(suffix=''):: refSelf.plain('.role%s' % suffix),
      '#secret_key':: { 'function': { help: |||
        AliCloud secret key read from Vault.
      ||| } },
      secret_key(suffix=''):: refSelf.plain('.secret_key%s' % suffix),
      '#security_token':: { 'function': { help: |||
        AliCloud security token read from Vault (STS credentials).
      ||| } },
      security_token(suffix=''):: refSelf.plain('.security_token%s' % suffix),
    },
  },
}
