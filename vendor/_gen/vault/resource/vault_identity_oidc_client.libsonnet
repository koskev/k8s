{
  new(terraformName, name):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_identity_oidc_client+: {
        [terraformName]+: {
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withAccessTokenTtl':: { 'function': { help: |||
      The time-to-live for access tokens obtained by the client. 
    ||| } },
    withAccessTokenTtl(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { access_token_ttl: value } },
      },
    },
    '#withAssignments':: { 'function': { help: |||
      A list of assignment resources associated with the client. 
    ||| } },
    withAssignments(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { assignments: value } },
      },
    },
    '#withClientType':: { 'function': { help: |||
      The client type based on its ability to maintain confidentiality of credentials.Defaults to 'confidential'. 
    ||| } },
    withClientType(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { client_type: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { id: value } },
      },
    },
    '#withIdTokenTtl':: { 'function': { help: |||
      The time-to-live for ID tokens obtained by the client. The value should be less than the verification_ttl on the key. 
    ||| } },
    withIdTokenTtl(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { id_token_ttl: value } },
      },
    },
    '#withKey':: { 'function': { help: |||
      A reference to a named key resource in Vault. This cannot be modified after creation. 
    ||| } },
    withKey(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { key: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      The name of the client. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRedirectUris':: { 'function': { help: |||
      Redirection URI values used by the client. One of these values must exactly match the redirect_uri parameter value used in each authentication request. 
    ||| } },
    withRedirectUris(value):: self {
      resource+: {
        vault_identity_oidc_client+: { [terraformName]+: { redirect_uris: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_identity_oidc_client.%s%s }' % [terraformName, suffix],
    fields:: {
      '#access_token_ttl':: { 'function': { help: |||
        The time-to-live for access tokens obtained by the client. 
      ||| } },
      access_token_ttl(suffix=''):: refSelf.plain('.access_token_ttl%s' % suffix),
      '#assignments':: { 'function': { help: |||
        A list of assignment resources associated with the client. 
      ||| } },
      assignments(suffix=''):: refSelf.plain('.assignments%s' % suffix),
      '#client_id':: { 'function': { help: |||
        The Client ID from Vault. 
      ||| } },
      client_id(suffix=''):: refSelf.plain('.client_id%s' % suffix),
      '#client_secret':: { 'function': { help: |||
        The Client Secret from Vault. 
      ||| } },
      client_secret(suffix=''):: refSelf.plain('.client_secret%s' % suffix),
      '#client_type':: { 'function': { help: |||
        The client type based on its ability to maintain confidentiality of credentials.Defaults to 'confidential'. 
      ||| } },
      client_type(suffix=''):: refSelf.plain('.client_type%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#id_token_ttl':: { 'function': { help: |||
        The time-to-live for ID tokens obtained by the client. The value should be less than the verification_ttl on the key. 
      ||| } },
      id_token_ttl(suffix=''):: refSelf.plain('.id_token_ttl%s' % suffix),
      '#key':: { 'function': { help: |||
        A reference to a named key resource in Vault. This cannot be modified after creation. 
      ||| } },
      key(suffix=''):: refSelf.plain('.key%s' % suffix),
      '#name':: { 'function': { help: |||
        The name of the client. 
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#redirect_uris':: { 'function': { help: |||
        Redirection URI values used by the client. One of these values must exactly match the redirect_uri parameter value used in each authentication request. 
      ||| } },
      redirect_uris(suffix=''):: refSelf.plain('.redirect_uris%s' % suffix),
    },
  },
}
