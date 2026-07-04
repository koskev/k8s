{
  local outerSelf = self,
  new(terraformName, acs_urls, entity_id):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_saml_auth_backend+: {
        [terraformName]+: {
          acs_urls: acs_urls,
          entity_id: entity_id,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { providers: value } },
      },
    },
    '#acs_urls':: { 'function': { help: |||
      The well-formatted URLs of your Assertion Consumer Service (ACS) that should receive a response from the identity provider.
    ||| } },
    withAcsUrls(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { acs_urls: value } },
      },
    },
    '#default_role':: { 'function': { help: |||
      The role to use if no role is provided during login.
    ||| } },
    withDefaultRole(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { default_role: value } },
      },
    },
    '#disable_remount':: { 'function': { help: |||
      If set, opts out of mount migration on path updates.
    ||| } },
    withDisableRemount(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { disable_remount: value } },
      },
    },
    '#entity_id':: { 'function': { help: |||
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
    '#idp_cert':: { 'function': { help: |||
      The PEM encoded certificate of the identity provider. Mutually exclusive with 'idp_metadata_url'
    ||| } },
    withIdpCert(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { idp_cert: value } },
      },
    },
    '#idp_entity_id':: { 'function': { help: |||
      The entity ID of the identity provider. Mutually exclusive with 'idp_metadata_url'.
    ||| } },
    withIdpEntityId(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { idp_entity_id: value } },
      },
    },
    '#idp_metadata_url':: { 'function': { help: |||
      The metadata URL of the identity provider.
    ||| } },
    withIdpMetadataUrl(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { idp_metadata_url: value } },
      },
    },
    '#idp_sso_url':: { 'function': { help: |||
      The SSO URL of the identity provider. Mutually exclusive with 'idp_metadata_url'.
    ||| } },
    withIdpSsoUrl(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { idp_sso_url: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    '#path':: { 'function': { help: |||
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
    '#validate_assertion_signature':: { 'function': { help: |||
      Whether to validate the assertion signature.
    ||| } },
    withValidateAssertionSignature(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { validate_assertion_signature: value } },
      },
    },
    '#validate_response_signature':: { 'function': { help: |||
      Whether to validate the response signature.
    ||| } },
    withValidateResponseSignature(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { validate_response_signature: value } },
      },
    },
    '#verbose_logging':: { 'function': { help: |||
      Log additional, potentially sensitive information during the SAML exchange according to the current logging level. Not recommended for production.
    ||| } },
    withVerboseLogging(value):: self {
      resource+: {
        vault_saml_auth_backend+: { [terraformName]+: { verbose_logging: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_saml_auth_backend.%s%s }' % [terraformName, suffix],
    fields:: {
      '#acs_urls':: { 'function': { help: |||
        The well-formatted URLs of your Assertion Consumer Service (ACS) that should receive a response from the identity provider.
      ||| } },
      acs_urls(suffix=''):: refSelf.plain('.acs_urls%s' % suffix),
      '#default_role':: { 'function': { help: |||
        The role to use if no role is provided during login.
      ||| } },
      default_role(suffix=''):: refSelf.plain('.default_role%s' % suffix),
      '#disable_remount':: { 'function': { help: |||
        If set, opts out of mount migration on path updates.
      ||| } },
      disable_remount(suffix=''):: refSelf.plain('.disable_remount%s' % suffix),
      '#entity_id':: { 'function': { help: |||
        The entity ID of the SAML authentication service provider.
      ||| } },
      entity_id(suffix=''):: refSelf.plain('.entity_id%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#idp_cert':: { 'function': { help: |||
        The PEM encoded certificate of the identity provider. Mutually exclusive with 'idp_metadata_url'
      ||| } },
      idp_cert(suffix=''):: refSelf.plain('.idp_cert%s' % suffix),
      '#idp_entity_id':: { 'function': { help: |||
        The entity ID of the identity provider. Mutually exclusive with 'idp_metadata_url'.
      ||| } },
      idp_entity_id(suffix=''):: refSelf.plain('.idp_entity_id%s' % suffix),
      '#idp_metadata_url':: { 'function': { help: |||
        The metadata URL of the identity provider.
      ||| } },
      idp_metadata_url(suffix=''):: refSelf.plain('.idp_metadata_url%s' % suffix),
      '#idp_sso_url':: { 'function': { help: |||
        The SSO URL of the identity provider. Mutually exclusive with 'idp_metadata_url'.
      ||| } },
      idp_sso_url(suffix=''):: refSelf.plain('.idp_sso_url%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#path':: { 'function': { help: |||
        Unique name of the auth backend to configure.
      ||| } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      tune(suffix=''):: refSelf.plain('.tune%s' % suffix),
      '#validate_assertion_signature':: { 'function': { help: |||
        Whether to validate the assertion signature.
      ||| } },
      validate_assertion_signature(suffix=''):: refSelf.plain('.validate_assertion_signature%s' % suffix),
      '#validate_response_signature':: { 'function': { help: |||
        Whether to validate the response signature.
      ||| } },
      validate_response_signature(suffix=''):: refSelf.plain('.validate_response_signature%s' % suffix),
      '#verbose_logging':: { 'function': { help: |||
        Log additional, potentially sensitive information during the SAML exchange according to the current logging level. Not recommended for production.
      ||| } },
      verbose_logging(suffix=''):: refSelf.plain('.verbose_logging%s' % suffix),
    },
  },
}
