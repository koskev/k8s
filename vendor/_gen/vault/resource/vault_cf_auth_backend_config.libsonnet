{
  new(terraformName, cf_api_addr, cf_password_wo, cf_password_wo_version, cf_username, identity_ca_certificates, mount):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_cf_auth_backend_config+: {
        [terraformName]+: {
          cf_api_addr: cf_api_addr,
          cf_password_wo: cf_password_wo,
          cf_password_wo_version: cf_password_wo_version,
          cf_username: cf_username,
          identity_ca_certificates: identity_ca_certificates,
          mount: mount,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withCfApiAddr':: { 'function': { help: |||
      CF's full API address, used for verifying that a given `CF_INSTANCE_CERT` shows an application ID, space ID, and organization ID that presently exist. 
    ||| } },
    withCfApiAddr(value):: self {
      resource+: {
        vault_cf_auth_backend_config+: { [terraformName]+: { cf_api_addr: value } },
      },
    },
    '#withCfApiTrustedCertificates':: { 'function': { help: |||
      The certificate(s) presented by the CF API. Configures Vault to trust these certificates when making API calls. 
    ||| } },
    withCfApiTrustedCertificates(value):: self {
      resource+: {
        vault_cf_auth_backend_config+: { [terraformName]+: { cf_api_trusted_certificates: value } },
      },
    },
    '#withCfPasswordWo':: { 'function': { help: |||
      The password for authenticating to the CF API. This attribute is write-only and is never stored in Terraform state. 
    ||| } },
    withCfPasswordWo(value):: self {
      resource+: {
        vault_cf_auth_backend_config+: { [terraformName]+: { cf_password_wo: value } },
      },
    },
    '#withCfPasswordWoVersion':: { 'function': { help: |||
      Version counter for 'cf_password_wo'. Increment this value to trigger an update when only the write-only password changes. 
    ||| } },
    withCfPasswordWoVersion(value):: self {
      resource+: {
        vault_cf_auth_backend_config+: { [terraformName]+: { cf_password_wo_version: value } },
      },
    },
    '#withCfTimeout':: { 'function': { help: |||
      The timeout for the CF API in seconds. Defaults to `0` (no timeout). Removing this field from config resets the value to `0` in Vault. 
    ||| } },
    withCfTimeout(value):: self {
      resource+: {
        vault_cf_auth_backend_config+: { [terraformName]+: { cf_timeout: value } },
      },
    },
    '#withCfUsername':: { 'function': { help: |||
      The username for authenticating to the CF API. 
    ||| } },
    withCfUsername(value):: self {
      resource+: {
        vault_cf_auth_backend_config+: { [terraformName]+: { cf_username: value } },
      },
    },
    '#withIdentityCaCertificates':: { 'function': { help: |||
      The root CA certificate(s) to be used for verifying that the `CF_INSTANCE_CERT` presented for logging in was issued by the proper authority. 
    ||| } },
    withIdentityCaCertificates(value):: self {
      resource+: {
        vault_cf_auth_backend_config+: { [terraformName]+: { identity_ca_certificates: value } },
      },
    },
    '#withLoginMaxSecondsNotAfter':: { 'function': { help: |||
      The maximum number of seconds in the future when a signature could have been created. Defaults to `60`. This field is `Computed`: if removed from config, Vault retains the previously set value. 
    ||| } },
    withLoginMaxSecondsNotAfter(value):: self {
      resource+: {
        vault_cf_auth_backend_config+: { [terraformName]+: { login_max_seconds_not_after: value } },
      },
    },
    '#withLoginMaxSecondsNotBefore':: { 'function': { help: |||
      The maximum number of seconds in the past when a signature could have been created. Defaults to `300`. This field is `Computed`: if removed from config, Vault retains the previously set value. 
    ||| } },
    withLoginMaxSecondsNotBefore(value):: self {
      resource+: {
        vault_cf_auth_backend_config+: { [terraformName]+: { login_max_seconds_not_before: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      Mount path for the CF auth engine in Vault. 
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_cf_auth_backend_config+: { [terraformName]+: { mount: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_cf_auth_backend_config+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_cf_auth_backend_config.%s%s }' % [terraformName, suffix],
    fields:: {
      '#cf_api_addr':: { 'function': { help: |||
        CF's full API address, used for verifying that a given `CF_INSTANCE_CERT` shows an application ID, space ID, and organization ID that presently exist. 
      ||| } },
      cf_api_addr(suffix=''):: refSelf.plain('.cf_api_addr%s' % suffix),
      '#cf_api_trusted_certificates':: { 'function': { help: |||
        The certificate(s) presented by the CF API. Configures Vault to trust these certificates when making API calls. 
      ||| } },
      cf_api_trusted_certificates(suffix=''):: refSelf.plain('.cf_api_trusted_certificates%s' % suffix),
      '#cf_password_wo':: { 'function': { help: |||
        The password for authenticating to the CF API. This attribute is write-only and is never stored in Terraform state. 
      ||| } },
      cf_password_wo(suffix=''):: refSelf.plain('.cf_password_wo%s' % suffix),
      '#cf_password_wo_version':: { 'function': { help: |||
        Version counter for 'cf_password_wo'. Increment this value to trigger an update when only the write-only password changes. 
      ||| } },
      cf_password_wo_version(suffix=''):: refSelf.plain('.cf_password_wo_version%s' % suffix),
      '#cf_timeout':: { 'function': { help: |||
        The timeout for the CF API in seconds. Defaults to `0` (no timeout). Removing this field from config resets the value to `0` in Vault. 
      ||| } },
      cf_timeout(suffix=''):: refSelf.plain('.cf_timeout%s' % suffix),
      '#cf_username':: { 'function': { help: |||
        The username for authenticating to the CF API. 
      ||| } },
      cf_username(suffix=''):: refSelf.plain('.cf_username%s' % suffix),
      '#identity_ca_certificates':: { 'function': { help: |||
        The root CA certificate(s) to be used for verifying that the `CF_INSTANCE_CERT` presented for logging in was issued by the proper authority. 
      ||| } },
      identity_ca_certificates(suffix=''):: refSelf.plain('.identity_ca_certificates%s' % suffix),
      '#login_max_seconds_not_after':: { 'function': { help: |||
        The maximum number of seconds in the future when a signature could have been created. Defaults to `60`. This field is `Computed`: if removed from config, Vault retains the previously set value. 
      ||| } },
      login_max_seconds_not_after(suffix=''):: refSelf.plain('.login_max_seconds_not_after%s' % suffix),
      '#login_max_seconds_not_before':: { 'function': { help: |||
        The maximum number of seconds in the past when a signature could have been created. Defaults to `300`. This field is `Computed`: if removed from config, Vault retains the previously set value. 
      ||| } },
      login_max_seconds_not_before(suffix=''):: refSelf.plain('.login_max_seconds_not_before%s' % suffix),
      '#mount':: { 'function': { help: |||
        Mount path for the CF auth engine in Vault. 
      ||| } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
    },
  },
}
