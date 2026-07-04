{
  local outerSelf = self,
  new(terraformName, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_identity_oidc_provider+: {
        [terraformName]+: {
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withAllowedClientIds':: { 'function': { help: |||
      The client IDs that are permitted to use the provider. If empty, no clients are allowed. If "*", all clients are allowed.
    ||| } },
    withAllowedClientIds(value):: self {
      resource+: {
        vault_identity_oidc_provider+: { [terraformName]+: { allowed_client_ids: value } },
      },
    },
    '#withHttpsEnabled':: { 'function': { help: |||
      Set to true if the issuer endpoint uses HTTPS.
    ||| } },
    withHttpsEnabled(value):: self {
      resource+: {
        vault_identity_oidc_provider+: { [terraformName]+: { https_enabled: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_oidc_provider+: { [terraformName]+: { id: value } },
      },
    },
    '#withIssuerHost':: { 'function': { help: |||
      The host for the issuer. Can be either host or host:port.
    ||| } },
    withIssuerHost(value):: self {
      resource+: {
        vault_identity_oidc_provider+: { [terraformName]+: { issuer_host: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      The name of the provider.
    ||| } },
    withName(value):: self {
      resource+: {
        vault_identity_oidc_provider+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_oidc_provider+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withScopesSupported':: { 'function': { help: |||
      The scopes available for requesting on the provider.
    ||| } },
    withScopesSupported(value):: self {
      resource+: {
        vault_identity_oidc_provider+: { [terraformName]+: { scopes_supported: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_identity_oidc_provider.%s%s }' % [terraformName, suffix],
    fields:: {
      '#allowed_client_ids':: { 'function': { help: |||
        The client IDs that are permitted to use the provider. If empty, no clients are allowed. If "*", all clients are allowed.
      ||| } },
      allowed_client_ids(suffix=''):: refSelf.plain('.allowed_client_ids%s' % suffix),
      '#https_enabled':: { 'function': { help: |||
        Set to true if the issuer endpoint uses HTTPS.
      ||| } },
      https_enabled(suffix=''):: refSelf.plain('.https_enabled%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#issuer':: { 'function': { help: |||
        Specifies what will be used as the 'scheme://host:port' component for the 'iss' claim of ID tokens.This value is computed using the issuer_host and https_enabled fields.
      ||| } },
      issuer(suffix=''):: refSelf.plain('.issuer%s' % suffix),
      '#issuer_host':: { 'function': { help: |||
        The host for the issuer. Can be either host or host:port.
      ||| } },
      issuer_host(suffix=''):: refSelf.plain('.issuer_host%s' % suffix),
      '#name':: { 'function': { help: |||
        The name of the provider.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#scopes_supported':: { 'function': { help: |||
        The scopes available for requesting on the provider.
      ||| } },
      scopes_supported(suffix=''):: refSelf.plain('.scopes_supported%s' % suffix),
    },
  },
}
