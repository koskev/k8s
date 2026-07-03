{
  new(terraformName, role_id):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_approle_auth_backend_login+: {
        [terraformName]+: {
          role_id: role_id,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withBackend':: { 'function': { help: |||
      Unique name of the auth backend to configure. 
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { backend: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRoleId':: { 'function': { help: |||
      The RoleID to log in with. 
    ||| } },
    withRoleId(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { role_id: value } },
      },
    },
    '#withSecretId':: { 'function': { help: |||
      The SecretID to log in with. Required unless `bind_secret_id` is set to false on the role. 
    ||| } },
    withSecretId(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { secret_id: value } },
      },
    },
    '#withSecretIdWo':: { 'function': { help: |||
      The SecretID to log in with. Write-only attribute that can accept ephemeral values. Required unless `bind_secret_id` is set to false on the role. 
    ||| } },
    withSecretIdWo(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { secret_id_wo: value } },
      },
    },
    '#withSecretIdWoVersion':: { 'function': { help: |||
      Version counter for the write-only secret_id field. Increment this to trigger re-authentication with a new SecretID. 
    ||| } },
    withSecretIdWoVersion(value):: self {
      resource+: {
        vault_approle_auth_backend_login+: { [terraformName]+: { secret_id_wo_version: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_approle_auth_backend_login.%s%s }' % [terraformName, suffix],
    fields:: {
      '#accessor':: { 'function': { help: |||
        The accessor for the token. 
      ||| } },
      accessor(suffix=''):: refSelf.plain('.accessor%s' % suffix),
      '#backend':: { 'function': { help: |||
        Unique name of the auth backend to configure. 
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#client_token':: { 'function': { help: |||
        The token. 
      ||| } },
      client_token(suffix=''):: refSelf.plain('.client_token%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#lease_duration':: { 'function': { help: |||
        How long the token is valid for. 
      ||| } },
      lease_duration(suffix=''):: refSelf.plain('.lease_duration%s' % suffix),
      '#lease_started':: { 'function': { help: |||
        The timestamp the lease started on, as determined by the machine running Terraform. 
      ||| } },
      lease_started(suffix=''):: refSelf.plain('.lease_started%s' % suffix),
      '#metadata':: { 'function': { help: |||
        Metadata associated with the token. 
      ||| } },
      metadata(suffix=''):: refSelf.plain('.metadata%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#policies':: { 'function': { help: |||
        Policies set on the token. 
      ||| } },
      policies(suffix=''):: refSelf.plain('.policies%s' % suffix),
      '#renewable':: { 'function': { help: |||
        Whether the token is renewable or not. 
      ||| } },
      renewable(suffix=''):: refSelf.plain('.renewable%s' % suffix),
      '#role_id':: { 'function': { help: |||
        The RoleID to log in with. 
      ||| } },
      role_id(suffix=''):: refSelf.plain('.role_id%s' % suffix),
      '#secret_id':: { 'function': { help: |||
        The SecretID to log in with. Required unless `bind_secret_id` is set to false on the role. 
      ||| } },
      secret_id(suffix=''):: refSelf.plain('.secret_id%s' % suffix),
      '#secret_id_wo':: { 'function': { help: |||
        The SecretID to log in with. Write-only attribute that can accept ephemeral values. Required unless `bind_secret_id` is set to false on the role. 
      ||| } },
      secret_id_wo(suffix=''):: refSelf.plain('.secret_id_wo%s' % suffix),
      '#secret_id_wo_version':: { 'function': { help: |||
        Version counter for the write-only secret_id field. Increment this to trigger re-authentication with a new SecretID. 
      ||| } },
      secret_id_wo_version(suffix=''):: refSelf.plain('.secret_id_wo_version%s' % suffix),
    },
  },
}
