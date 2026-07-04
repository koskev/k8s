{
  local outerSelf = self,
  new(terraformName, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      vault_identity_oidc_openid_config+: {
        [terraformName]+: {
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { id: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      The name of the provider.
    ||| } },
    withName(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_identity_oidc_openid_config+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_identity_oidc_openid_config.%s%s }' % [terraformName, suffix],
    fields:: {
      '#authorization_endpoint':: { 'function': { help: |||
        The Authorization Endpoint for the provider.
      ||| } },
      authorization_endpoint(suffix=''):: refSelf.plain('.authorization_endpoint%s' % suffix),
      '#grant_types_supported':: { 'function': { help: |||
        The grant types supported by the provider.
      ||| } },
      grant_types_supported(suffix=''):: refSelf.plain('.grant_types_supported%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#id_token_signing_alg_values_supported':: { 'function': { help: |||
        The signing algorithms supported by the provider.
      ||| } },
      id_token_signing_alg_values_supported(suffix=''):: refSelf.plain('.id_token_signing_alg_values_supported%s' % suffix),
      '#issuer':: { 'function': { help: |||
        The URL of the issuer for the provider.
      ||| } },
      issuer(suffix=''):: refSelf.plain('.issuer%s' % suffix),
      '#jwks_uri':: { 'function': { help: |||
        The well known keys URI for the provider.
      ||| } },
      jwks_uri(suffix=''):: refSelf.plain('.jwks_uri%s' % suffix),
      '#name':: { 'function': { help: |||
        The name of the provider.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#request_uri_parameter_supported':: { 'function': { help: |||
        Specifies whether Request URI Parameter is supported by the provider.
      ||| } },
      request_uri_parameter_supported(suffix=''):: refSelf.plain('.request_uri_parameter_supported%s' % suffix),
      '#response_types_supported':: { 'function': { help: |||
        The response types supported by the provider.
      ||| } },
      response_types_supported(suffix=''):: refSelf.plain('.response_types_supported%s' % suffix),
      '#scopes_supported':: { 'function': { help: |||
        The scopes supported by the provider.
      ||| } },
      scopes_supported(suffix=''):: refSelf.plain('.scopes_supported%s' % suffix),
      '#subject_types_supported':: { 'function': { help: |||
        The subject types supported by the provider.
      ||| } },
      subject_types_supported(suffix=''):: refSelf.plain('.subject_types_supported%s' % suffix),
      '#token_endpoint':: { 'function': { help: |||
        The Token Endpoint for the provider.
      ||| } },
      token_endpoint(suffix=''):: refSelf.plain('.token_endpoint%s' % suffix),
      '#token_endpoint_auth_methods_supported':: { 'function': { help: |||
        The token endpoint auth methods supported by the provider.
      ||| } },
      token_endpoint_auth_methods_supported(suffix=''):: refSelf.plain('.token_endpoint_auth_methods_supported%s' % suffix),
      '#userinfo_endpoint':: { 'function': { help: |||
        The User Info Endpoint for the provider.
      ||| } },
      userinfo_endpoint(suffix=''):: refSelf.plain('.userinfo_endpoint%s' % suffix),
    },
  },
}
