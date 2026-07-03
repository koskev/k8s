{
  new(terraformName, entity_id, acs_urls):: {
    _type:: 'tf',
    resource+: {
      vault_saml_auth_backend+: { [terraformName]+: {
        entity_id: entity_id,
        acs_urls: acs_urls,
      } },
    },
    withIdpSsoUrl(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { idp_sso_url: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { id: value } },
      },
    },
    withIdpEntityId(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { idp_entity_id: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    withTune(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { tune: value } },
      },
    },
    withDisableRemount(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    withValidateResponseSignature(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { validate_response_signature: value } },
      },
    },
    withIdpCert(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { idp_cert: value } },
      },
    },
    withDefaultRole(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { default_role: value } },
      },
    },
    withIdpMetadataUrl(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { idp_metadata_url: value } },
      },
    },
    withVerboseLogging(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { verbose_logging: value } },
      },
    },
    withValidateAssertionSignature(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { validate_assertion_signature: value } },
      },
    },
    withEntityId(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { entity_id: value } },
      },
    },
    withAcsUrls(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { acs_urls: value } },
      },
    },
    withPath(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { path: value } },
      },
    },
  },
}
