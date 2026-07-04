{
  '#new':: { 'function': { help: |||
    Provides an ephemeral resource to read a generic secret from Vault.
  ||| } },
  local outerSelf = self,
  new(terraformName, path):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    ephemeral+: {
      vault_generic_secret+: {
        [terraformName]+: {
          path: path,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withMountId':: { 'function': { help: |||
      Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
    ||| } },
    withMountId(value):: self {
      ephemeral+: {
        vault_generic_secret+: { [terraformName]+: { mount_id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      ephemeral+: {
        vault_generic_secret+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Full path from which a secret will be read.
    ||| } },
    withPath(value):: self {
      ephemeral+: {
        vault_generic_secret+: { [terraformName]+: { path: value } },
      },
    },
    '#withVersion':: { 'function': { help: |||
      Version of the secret to retrieve. Use -1 for latest version.
    ||| } },
    withVersion(value):: self {
      ephemeral+: {
        vault_generic_secret+: { [terraformName]+: { version: value } },
      },
    },
    '#withWithLeaseStartTime':: { 'function': { help: |||
      If set to true, stores 'lease_start_time' in the result.
    ||| } },
    withWithLeaseStartTime(value):: self {
      ephemeral+: {
        vault_generic_secret+: { [terraformName]+: { with_lease_start_time: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_generic_secret.%s%s }' % [terraformName, suffix],
    fields:: {
      '#data':: { 'function': { help: |||
        Map of strings read from Vault.
      ||| } },
      data(suffix=''):: refSelf.plain('.data%s' % suffix),
      '#data_json':: { 'function': { help: |||
        JSON-encoded secret data read from Vault.
      ||| } },
      data_json(suffix=''):: refSelf.plain('.data_json%s' % suffix),
      '#lease_duration':: { 'function': { help: |||
        Lease duration in seconds.
      ||| } },
      lease_duration(suffix=''):: refSelf.plain('.lease_duration%s' % suffix),
      '#lease_id':: { 'function': { help: |||
        Lease identifier assigned by vault.
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
      '#mount_id':: { 'function': { help: |||
        Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
      ||| } },
      mount_id(suffix=''):: refSelf.plain('.mount_id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#path':: { 'function': { help: |||
        Full path from which a secret will be read.
      ||| } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      '#version':: { 'function': { help: |||
        Version of the secret to retrieve. Use -1 for latest version.
      ||| } },
      version(suffix=''):: refSelf.plain('.version%s' % suffix),
      '#with_lease_start_time':: { 'function': { help: |||
        If set to true, stores 'lease_start_time' in the result.
      ||| } },
      with_lease_start_time(suffix=''):: refSelf.plain('.with_lease_start_time%s' % suffix),
    },
  },
}
