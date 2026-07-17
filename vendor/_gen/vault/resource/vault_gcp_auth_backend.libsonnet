{
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: {
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { [name]: value } },
    } },
    withClientEmail(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { client_email: value } },
    } },
    withClientId(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { client_id: value } },
    } },
    withCredentials(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { credentials: value } },
    } },
    '#withCredentialsWo':: { 'function': {
      help:
        |||
          JSON-encoded credentials to use to connect to GCP. This field is write-only and the value cannot be read back.
        |||,
    } },
    withCredentialsWo(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { credentials_wo: value } },
    } },
    '#withCredentialsWoVersion':: { 'function': {
      help:
        |||
          A version counter for write-only credentials. Incrementing this value will cause the provider to send the credentials to Vault.
        |||,
    } },
    withCredentialsWoVersion(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { credentials_wo_version: value } },
    } },
    withDescription(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { description: value } },
    } },
    '#withDisableAutomatedRotation':: { 'function': {
      help:
        |||
          Stops rotation of the root credential until set to false.
        |||,
    } },
    withDisableAutomatedRotation(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { disable_automated_rotation: value } },
    } },
    '#withDisableRemount':: { 'function': {
      help:
        |||
          If set, opts out of mount migration on path updates.
        |||,
    } },
    withDisableRemount(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { disable_remount: value } },
    } },
    '#withGceAlias':: { 'function': {
      help:
        |||
          Defines what alias needs to be used during login and refelects the same in token metadata and audit logs.
        |||,
    } },
    withGceAlias(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { gce_alias: value } },
    } },
    '#withGceMetadata':: { 'function': {
      help:
        |||
          Controls which instance metadata fields from the GCE login are captured into Vault's token metadata or audit logs.
        |||,
    } },
    withGceMetadata(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { gce_metadata: value } },
    } },
    '#withIamAlias':: { 'function': {
      help:
        |||
          Defines what alias needs to be used during login and refelects the same in token metadata and audit logs.
        |||,
    } },
    withIamAlias(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { iam_alias: value } },
    } },
    '#withIamMetadata':: { 'function': {
      help:
        |||
          Controls the metadata to include on the token returned by the login endpoint.
        |||,
    } },
    withIamMetadata(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { iam_metadata: value } },
    } },
    withId(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { id: value } },
    } },
    '#withIdentityTokenAudience':: { 'function': {
      help:
        |||
          The audience claim value for plugin identity tokens.
        |||,
    } },
    withIdentityTokenAudience(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { identity_token_audience: value } },
    } },
    '#withIdentityTokenKey':: { 'function': {
      help:
        |||
          The key to use for signing identity tokens.
        |||,
    } },
    withIdentityTokenKey(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { identity_token_key: value } },
    } },
    '#withIdentityTokenTtl':: { 'function': {
      help:
        |||
          The TTL of generated tokens.
        |||,
    } },
    withIdentityTokenTtl(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { identity_token_ttl: value } },
    } },
    '#withLocal':: { 'function': {
      help:
        |||
          Specifies if the auth method is local only
        |||,
    } },
    withLocal(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { 'local': value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { namespace: value } },
    } },
    withPath(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { path: value } },
    } },
    withPrivateKeyId(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { private_key_id: value } },
    } },
    withProjectId(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { project_id: value } },
    } },
    '#withRotationPeriod':: { 'function': {
      help:
        |||
          The period of time in seconds between each rotation of the root credential. Cannot be used with rotation_schedule.
        |||,
    } },
    withRotationPeriod(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { rotation_period: value } },
    } },
    '#withRotationSchedule':: { 'function': {
      help:
        |||
          The cron-style schedule for the root credential to be rotated on. Cannot be used with rotation_period.
        |||,
    } },
    withRotationSchedule(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { rotation_schedule: value } },
    } },
    '#withRotationWindow':: { 'function': {
      help:
        |||
          The maximum amount of time in seconds Vault is allowed to complete a rotation once a scheduled rotation is triggered. Can only be used with rotation_schedule.
        |||,
    } },
    withRotationWindow(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { rotation_window: value } },
    } },
    '#withServiceAccountEmail':: { 'function': {
      help:
        |||
          Service Account to impersonate for plugin workload identity federation.
        |||,
    } },
    withServiceAccountEmail(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { service_account_email: value } },
    } },
    withTune(value):: self { resource+: {
      vault_gcp_auth_backend+: { [terraformName]+: { tune: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_gcp_auth_backend.%s%s }' % [terraformName, suffix],
    fields:: {
      '#accessor':: { 'function': {
        help:
          |||
            The accessor of the auth backend
          |||,
      } },
      accessor(suffix=''):: refSelf.plain('.accessor%s' % suffix),
      client_email(suffix=''):: refSelf.plain('.client_email%s' % suffix),
      client_id(suffix=''):: refSelf.plain('.client_id%s' % suffix),
      credentials(suffix=''):: refSelf.plain('.credentials%s' % suffix),
      '#credentials_wo':: { 'function': {
        help:
          |||
            JSON-encoded credentials to use to connect to GCP. This field is write-only and the value cannot be read back.
          |||,
      } },
      credentials_wo(suffix=''):: refSelf.plain('.credentials_wo%s' % suffix),
      '#credentials_wo_version':: { 'function': {
        help:
          |||
            A version counter for write-only credentials. Incrementing this value will cause the provider to send the credentials to Vault.
          |||,
      } },
      credentials_wo_version(suffix=''):: refSelf.plain('.credentials_wo_version%s' % suffix),
      description(suffix=''):: refSelf.plain('.description%s' % suffix),
      '#disable_automated_rotation':: { 'function': {
        help:
          |||
            Stops rotation of the root credential until set to false.
          |||,
      } },
      disable_automated_rotation(suffix=''):: refSelf.plain('.disable_automated_rotation%s' % suffix),
      '#disable_remount':: { 'function': {
        help:
          |||
            If set, opts out of mount migration on path updates.
          |||,
      } },
      disable_remount(suffix=''):: refSelf.plain('.disable_remount%s' % suffix),
      '#gce_alias':: { 'function': {
        help:
          |||
            Defines what alias needs to be used during login and refelects the same in token metadata and audit logs.
          |||,
      } },
      gce_alias(suffix=''):: refSelf.plain('.gce_alias%s' % suffix),
      '#gce_metadata':: { 'function': {
        help:
          |||
            Controls which instance metadata fields from the GCE login are captured into Vault's token metadata or audit logs.
          |||,
      } },
      gce_metadata(suffix=''):: refSelf.plain('.gce_metadata%s' % suffix),
      '#iam_alias':: { 'function': {
        help:
          |||
            Defines what alias needs to be used during login and refelects the same in token metadata and audit logs.
          |||,
      } },
      iam_alias(suffix=''):: refSelf.plain('.iam_alias%s' % suffix),
      '#iam_metadata':: { 'function': {
        help:
          |||
            Controls the metadata to include on the token returned by the login endpoint.
          |||,
      } },
      iam_metadata(suffix=''):: refSelf.plain('.iam_metadata%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#identity_token_audience':: { 'function': {
        help:
          |||
            The audience claim value for plugin identity tokens.
          |||,
      } },
      identity_token_audience(suffix=''):: refSelf.plain('.identity_token_audience%s' % suffix),
      '#identity_token_key':: { 'function': {
        help:
          |||
            The key to use for signing identity tokens.
          |||,
      } },
      identity_token_key(suffix=''):: refSelf.plain('.identity_token_key%s' % suffix),
      '#identity_token_ttl':: { 'function': {
        help:
          |||
            The TTL of generated tokens.
          |||,
      } },
      identity_token_ttl(suffix=''):: refSelf.plain('.identity_token_ttl%s' % suffix),
      '#local':: { 'function': {
        help:
          |||
            Specifies if the auth method is local only
          |||,
      } },
      'local'(suffix=''):: refSelf.plain('.local%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      private_key_id(suffix=''):: refSelf.plain('.private_key_id%s' % suffix),
      project_id(suffix=''):: refSelf.plain('.project_id%s' % suffix),
      '#rotation_period':: { 'function': {
        help:
          |||
            The period of time in seconds between each rotation of the root credential. Cannot be used with rotation_schedule.
          |||,
      } },
      rotation_period(suffix=''):: refSelf.plain('.rotation_period%s' % suffix),
      '#rotation_schedule':: { 'function': {
        help:
          |||
            The cron-style schedule for the root credential to be rotated on. Cannot be used with rotation_period.
          |||,
      } },
      rotation_schedule(suffix=''):: refSelf.plain('.rotation_schedule%s' % suffix),
      '#rotation_window':: { 'function': {
        help:
          |||
            The maximum amount of time in seconds Vault is allowed to complete a rotation once a scheduled rotation is triggered. Can only be used with rotation_schedule.
          |||,
      } },
      rotation_window(suffix=''):: refSelf.plain('.rotation_window%s' % suffix),
      '#service_account_email':: { 'function': {
        help:
          |||
            Service Account to impersonate for plugin workload identity federation.
          |||,
      } },
      service_account_email(suffix=''):: refSelf.plain('.service_account_email%s' % suffix),
      tune(suffix=''):: refSelf.plain('.tune%s' % suffix),

    },

  },

}
