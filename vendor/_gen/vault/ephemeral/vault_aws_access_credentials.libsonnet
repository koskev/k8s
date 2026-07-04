{
  '#new':: { 'function': { help: |||
    Provides an ephemeral resource to generate AWS credentials from Vault.
  ||| } },
  local outerSelf = self,
  new(terraformName, mount, role):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    ephemeral+: {
      vault_aws_access_credentials+: {
        [terraformName]+: {
          mount: mount,
          role: role,
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
        vault_aws_access_credentials+: { [terraformName]+: { mount: value } },
      },
    },
    '#withMountId':: { 'function': { help: |||
      Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
    ||| } },
    withMountId(value):: self {
      ephemeral+: {
        vault_aws_access_credentials+: { [terraformName]+: { mount_id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      ephemeral+: {
        vault_aws_access_credentials+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRegion':: { 'function': { help: |||
      Region the read credentials belong to.
    ||| } },
    withRegion(value):: self {
      ephemeral+: {
        vault_aws_access_credentials+: { [terraformName]+: { region: value } },
      },
    },
    '#withRole':: { 'function': { help: |||
      AWS Secret Role to read credentials from.
    ||| } },
    withRole(value):: self {
      ephemeral+: {
        vault_aws_access_credentials+: { [terraformName]+: { role: value } },
      },
    },
    '#withRoleArn':: { 'function': { help: |||
      ARN to use if multiple are available in the role. Required if the role has multiple ARNs.
    ||| } },
    withRoleArn(value):: self {
      ephemeral+: {
        vault_aws_access_credentials+: { [terraformName]+: { role_arn: value } },
      },
    },
    '#withTtl':: { 'function': { help: |||
      User specified Time-To-Live for the STS token. Uses the Role defined default_sts_ttl when not specified.
    ||| } },
    withTtl(value):: self {
      ephemeral+: {
        vault_aws_access_credentials+: { [terraformName]+: { ttl: value } },
      },
    },
    '#withType':: { 'function': { help: |||
      Type of credentials to read. Must be either 'creds' for Access Key and Secret Key, or 'sts' for STS.
    ||| } },
    withType(value):: self {
      ephemeral+: {
        vault_aws_access_credentials+: { [terraformName]+: { type: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_aws_access_credentials.%s%s }' % [terraformName, suffix],
    fields:: {
      '#access_key':: { 'function': { help: |||
        AWS access key ID read from Vault.
      ||| } },
      access_key(suffix=''):: refSelf.plain('.access_key%s' % suffix),
      '#lease_duration':: { 'function': { help: |||
        Lease duration in seconds relative to the time in lease_start_time.
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
      '#mount':: { 'function': { help: |||
        Mount path for the AWS secret engine in Vault.
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
      '#region':: { 'function': { help: |||
        Region the read credentials belong to.
      ||| } },
      region(suffix=''):: refSelf.plain('.region%s' % suffix),
      '#role':: { 'function': { help: |||
        AWS Secret Role to read credentials from.
      ||| } },
      role(suffix=''):: refSelf.plain('.role%s' % suffix),
      '#role_arn':: { 'function': { help: |||
        ARN to use if multiple are available in the role. Required if the role has multiple ARNs.
      ||| } },
      role_arn(suffix=''):: refSelf.plain('.role_arn%s' % suffix),
      '#secret_key':: { 'function': { help: |||
        AWS secret key read from Vault.
      ||| } },
      secret_key(suffix=''):: refSelf.plain('.secret_key%s' % suffix),
      '#security_token':: { 'function': { help: |||
        AWS security token read from Vault. (Only returned if type is 'sts').
      ||| } },
      security_token(suffix=''):: refSelf.plain('.security_token%s' % suffix),
      '#ttl':: { 'function': { help: |||
        User specified Time-To-Live for the STS token. Uses the Role defined default_sts_ttl when not specified.
      ||| } },
      ttl(suffix=''):: refSelf.plain('.ttl%s' % suffix),
      '#type':: { 'function': { help: |||
        Type of credentials to read. Must be either 'creds' for Access Key and Secret Key, or 'sts' for STS.
      ||| } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
    },
  },
}
