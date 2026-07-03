{
  new(terraformName, acs_urls, entity_id):: {
    _type:: 'tf',
    resource+: {
      vault_saml_auth_backend+: { [terraformName]+: {
        acs_urls: acs_urls,
        entity_id: entity_id,
      } },
    },
    '#withAcsUrls':: { 'function': { help: |||
      The well-formatted URLs of your Assertion Consumer Service (ACS) that should receive a response from the identity provider. 
    ||| } },
    withAcsUrls(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { acs_urls: value } },
      },
    },
    '#withDefaultRole':: { 'function': { help: |||
      The role to use if no role is provided during login. 
    ||| } },
    withDefaultRole(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { default_role: value } },
      },
    },
    '#withDisableRemount':: { 'function': { help: |||
      If set, opts out of mount migration on path updates. 
    ||| } },
    withDisableRemount(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    '#withEntityId':: { 'function': { help: |||
      The entity ID of the SAML authentication service provider. 
    ||| } },
    withEntityId(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { entity_id: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { id: value } },
      },
    },
    '#withIdpCert':: { 'function': { help: |||
      The PEM encoded certificate of the identity provider. Mutually exclusive with 'idp_metadata_url' 
    ||| } },
    withIdpCert(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { idp_cert: value } },
      },
    },
    '#withIdpEntityId':: { 'function': { help: |||
      The entity ID of the identity provider. Mutually exclusive with 'idp_metadata_url'. 
    ||| } },
    withIdpEntityId(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { idp_entity_id: value } },
      },
    },
    '#withIdpMetadataUrl':: { 'function': { help: |||
      The metadata URL of the identity provider. 
    ||| } },
    withIdpMetadataUrl(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { idp_metadata_url: value } },
      },
    },
    '#withIdpSsoUrl':: { 'function': { help: |||
      The SSO URL of the identity provider. Mutually exclusive with 'idp_metadata_url'. 
    ||| } },
    withIdpSsoUrl(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { idp_sso_url: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Unique name of the auth backend to configure. 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { path: value } },
      },
    },
    withTune(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { tune: value } },
      },
    },
    '#withValidateAssertionSignature':: { 'function': { help: |||
      Whether to validate the assertion signature. 
    ||| } },
    withValidateAssertionSignature(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { validate_assertion_signature: value } },
      },
    },
    '#withValidateResponseSignature':: { 'function': { help: |||
      Whether to validate the response signature. 
    ||| } },
    withValidateResponseSignature(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { validate_response_signature: value } },
      },
    },
    '#withVerboseLogging':: { 'function': { help: |||
      Log additional, potentially sensitive information during the SAML exchange according to the current logging level. Not recommended for production. 
    ||| } },
    withVerboseLogging(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { verbose_logging: value } },
      },
    },
  },
}
