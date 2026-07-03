{
  new(terraformName, backend):: {
    _type:: 'tf',
    data+: {
      vault_pki_secret_backend_config_est+: { [terraformName]+: {
        backend: backend,
      } },
    },
    '#withAuditFields':: { 'function': { help: |||
      Fields parsed from the CSR that appear in the audit and can be used by sentinel policies 
    ||| } },
    withAuditFields(value):: self {
      data+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { audit_fields: value } },
      },
    },
    '#withAuthenticators':: { 'function': { help: |||
      Lists the mount accessors EST should delegate authentication requests towards 
    ||| } },
    withAuthenticators(value):: self {
      data+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { authenticators: value } },
      },
    },
    '#withBackend':: { 'function': { help: |||
      Path where PKI engine is mounted 
    ||| } },
    withBackend(value):: self {
      data+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { backend: value } },
      },
    },
    '#withDefaultMount':: { 'function': { help: |||
      If set, this mount is registered as the default `.well-known/est` URL path. Only a single mount can enable this across a Vault cluster 
    ||| } },
    withDefaultMount(value):: self {
      data+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { default_mount: value } },
      },
    },
    '#withDefaultPathPolicy':: { 'function': { help: |||
      Required to be set if default_mount is enabled. Specifies the behavior for requests using the default EST label. Can be sign-verbatim or a role given by role:<role_name> 
    ||| } },
    withDefaultPathPolicy(value):: self {
      data+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { default_path_policy: value } },
      },
    },
    '#withEnableSentinelParsing':: { 'function': { help: |||
      If set, parse out fields from the provided CSR making them available for Sentinel policies 
    ||| } },
    withEnableSentinelParsing(value):: self {
      data+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { enable_sentinel_parsing: value } },
      },
    },
    '#withEnabled':: { 'function': { help: |||
      Specifies whether EST is enabled 
    ||| } },
    withEnabled(value):: self {
      data+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { enabled: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { id: value } },
      },
    },
    '#withLabelToPathPolicy':: { 'function': { help: |||
      A pairing of an EST label with the redirected behavior for requests hitting that role. The path policy can be sign-verbatim or a role given by role:<role_name>. Labels must be unique across Vault cluster, and will register .well-known/est/<label> URL paths 
    ||| } },
    withLabelToPathPolicy(value):: self {
      data+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { label_to_path_policy: value } },
      },
    },
    '#withLastUpdated':: { 'function': { help: |||
      A read-only timestamp representing the last time the configuration was updated 
    ||| } },
    withLastUpdated(value):: self {
      data+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { last_updated: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_pki_secret_backend_config_est+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
