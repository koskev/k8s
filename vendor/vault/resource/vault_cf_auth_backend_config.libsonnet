{
  new(terraformName, cf_username, cf_api_addr, cf_password_wo, mount, cf_password_wo_version, identity_ca_certificates):: {
    _type:: 'tf',
    resource+: {
      vault_cf_auth_backend_config+: { [terraformName]+: {
        cf_username: cf_username,
        cf_api_addr: cf_api_addr,
        cf_password_wo: cf_password_wo,
        mount: mount,
        cf_password_wo_version: cf_password_wo_version,
        identity_ca_certificates: identity_ca_certificates,
      } },
    },
    withCfUsername(value):: self {
      resource+: {
        vault_cf_auth_backend_config+: { [terraformName]+: { cf_username: value } },
      },
    },
    withCfApiAddr(value):: self {
      resource+: {
        vault_cf_auth_backend_config+: { [terraformName]+: { cf_api_addr: value } },
      },
    },
    withCfTimeout(value):: self {
      resource+: {
        vault_cf_auth_backend_config+: { [terraformName]+: { cf_timeout: value } },
      },
    },
    withCfPasswordWo(value):: self {
      resource+: {
        vault_cf_auth_backend_config+: { [terraformName]+: { cf_password_wo: value } },
      },
    },
    withCfApiTrustedCertificates(value):: self {
      resource+: {
        vault_cf_auth_backend_config+: { [terraformName]+: { cf_api_trusted_certificates: value } },
      },
    },
    withLoginMaxSecondsNotBefore(value):: self {
      resource+: {
        vault_cf_auth_backend_config+: { [terraformName]+: { login_max_seconds_not_before: value } },
      },
    },
    withMount(value):: self {
      resource+: {
        vault_cf_auth_backend_config+: { [terraformName]+: { mount: value } },
      },
    },
    withCfPasswordWoVersion(value):: self {
      resource+: {
        vault_cf_auth_backend_config+: { [terraformName]+: { cf_password_wo_version: value } },
      },
    },
    withLoginMaxSecondsNotAfter(value):: self {
      resource+: {
        vault_cf_auth_backend_config+: { [terraformName]+: { login_max_seconds_not_after: value } },
      },
    },
    withIdentityCaCertificates(value):: self {
      resource+: {
        vault_cf_auth_backend_config+: { [terraformName]+: { identity_ca_certificates: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_cf_auth_backend_config+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
