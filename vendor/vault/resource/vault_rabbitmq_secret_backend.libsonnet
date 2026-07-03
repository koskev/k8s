{
  new(terraformName, connection_uri, username):: {
    _type:: 'tf',
    resource+: {
      vault_rabbitmq_secret_backend+: { [terraformName]+: {
        connection_uri: connection_uri,
        username: username,
      } },
    },
    withAuditNonHmacRequestKeys(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend+: { [terraformName]+: { audit_non_hmac_request_keys: value } },
      },
    },
    withDescription(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend+: { [terraformName]+: { description: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend+: { [terraformName]+: { id: value } },
      },
    },
    withPasswordWo(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend+: { [terraformName]+: { password_wo: value } },
      },
    },
    withAccessor(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend+: { [terraformName]+: { accessor: value } },
      },
    },
    withConnectionUri(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend+: { [terraformName]+: { connection_uri: value } },
      },
    },
    withPassthroughRequestHeaders(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend+: { [terraformName]+: { passthrough_request_headers: value } },
      },
    },
    withUsername(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend+: { [terraformName]+: { username: value } },
      },
    },
    withDefaultLeaseTtlSeconds(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend+: { [terraformName]+: { default_lease_ttl_seconds: value } },
      },
    },
    withDisableRemount(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    withVerifyConnection(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend+: { [terraformName]+: { verify_connection: value } },
      },
    },
    withAllowedResponseHeaders(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend+: { [terraformName]+: { allowed_response_headers: value } },
      },
    },
    withMaxLeaseTtlSeconds(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend+: { [terraformName]+: { max_lease_ttl_seconds: value } },
      },
    },
    withAuditNonHmacResponseKeys(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend+: { [terraformName]+: { audit_non_hmac_response_keys: value } },
      },
    },
    withSealWrap(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend+: { [terraformName]+: { seal_wrap: value } },
      },
    },
    withAllowedManagedKeys(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend+: { [terraformName]+: { allowed_managed_keys: value } },
      },
    },
    withExternalEntropyAccess(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend+: { [terraformName]+: { external_entropy_access: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    withUsernameTemplate(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend+: { [terraformName]+: { username_template: value } },
      },
    },
    withPasswordPolicy(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend+: { [terraformName]+: { password_policy: value } },
      },
    },
    withPasswordWoVersion(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend+: { [terraformName]+: { password_wo_version: value } },
      },
    },
    withIdentityTokenKey(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend+: { [terraformName]+: { identity_token_key: value } },
      },
    },
    withForceNoCache(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend+: { [terraformName]+: { force_no_cache: value } },
      },
    },
    withLocal(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend+: { [terraformName]+: { 'local': value } },
      },
    },
    withPluginVersion(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend+: { [terraformName]+: { plugin_version: value } },
      },
    },
    withDelegatedAuthAccessors(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend+: { [terraformName]+: { delegated_auth_accessors: value } },
      },
    },
    withPassword(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend+: { [terraformName]+: { password: value } },
      },
    },
    withListingVisibility(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend+: { [terraformName]+: { listing_visibility: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend+: { [terraformName]+: { path: value } },
      },
    },
    withOptions(value):: self {
      resource+: {
        vault_rabbitmq_secret_backend+: { [terraformName]+: { options: value } },
      },
    },
  },
}
