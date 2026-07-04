{
  '#new':: { 'function': { help: |||
    Provides an ephemeral resource to generate an AppRole SecretID from Vault.
  ||| } },
  local outerSelf = self,
  new(terraformName, role_name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    ephemeral+: {
      vault_approle_auth_backend_role_secret_id+: {
        [terraformName]+: {
          role_name: role_name,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withBackend':: { 'function': { help: |||
      Unique name of the auth backend to configure.
    ||| } },
    withBackend(value):: self {
      ephemeral+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { backend: value } },
      },
    },
    '#withCidrList':: { 'function': { help: |||
      List of CIDR blocks that can log in using the SecretID.
    ||| } },
    withCidrList(value):: self {
      ephemeral+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { cidr_list: value } },
      },
    },
    '#withMetadata':: { 'function': { help: |||
      JSON-encoded secret data.
    ||| } },
    withMetadata(value):: self {
      ephemeral+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { metadata: value } },
      },
    },
    '#withMountId':: { 'function': { help: |||
      Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
    ||| } },
    withMountId(value):: self {
      ephemeral+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { mount_id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      ephemeral+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withNumUses':: { 'function': { help: |||
      The number of uses for the secret-id.
    ||| } },
    withNumUses(value):: self {
      ephemeral+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { num_uses: value } },
      },
    },
    '#withRoleName':: { 'function': { help: |||
      Name of the role.
    ||| } },
    withRoleName(value):: self {
      ephemeral+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { role_name: value } },
      },
    },
    '#withTtl':: { 'function': { help: |||
      The TTL duration of the SecretID in seconds.
    ||| } },
    withTtl(value):: self {
      ephemeral+: {
        vault_approle_auth_backend_role_secret_id+: { [terraformName]+: { ttl: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_approle_auth_backend_role_secret_id.%s%s }' % [terraformName, suffix],
    fields:: {
      '#accessor':: { 'function': { help: |||
        The accessor for the SecretID.
      ||| } },
      accessor(suffix=''):: refSelf.plain('.accessor%s' % suffix),
      '#backend':: { 'function': { help: |||
        Unique name of the auth backend to configure.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#cidr_list':: { 'function': { help: |||
        List of CIDR blocks that can log in using the SecretID.
      ||| } },
      cidr_list(suffix=''):: refSelf.plain('.cidr_list%s' % suffix),
      '#metadata':: { 'function': { help: |||
        JSON-encoded secret data.
      ||| } },
      metadata(suffix=''):: refSelf.plain('.metadata%s' % suffix),
      '#mount_id':: { 'function': { help: |||
        Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
      ||| } },
      mount_id(suffix=''):: refSelf.plain('.mount_id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#num_uses':: { 'function': { help: |||
        The number of uses for the secret-id.
      ||| } },
      num_uses(suffix=''):: refSelf.plain('.num_uses%s' % suffix),
      '#role_name':: { 'function': { help: |||
        Name of the role.
      ||| } },
      role_name(suffix=''):: refSelf.plain('.role_name%s' % suffix),
      '#secret_id':: { 'function': { help: |||
        The generated SecretID.
      ||| } },
      secret_id(suffix=''):: refSelf.plain('.secret_id%s' % suffix),
      '#ttl':: { 'function': { help: |||
        The TTL duration of the SecretID in seconds.
      ||| } },
      ttl(suffix=''):: refSelf.plain('.ttl%s' % suffix),
    },
  },
}
