{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        TokenRequest requests a token for a given service account.
      |||,
  } },
  new(terraformName):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    ephemeral+: {
      kubernetes_token_request_v1+: { [terraformName]+: {
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { ephemeral+: {
      kubernetes_token_request_v1+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { ephemeral+: {
      kubernetes_token_request_v1+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { ephemeral+: {
      kubernetes_token_request_v1+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { ephemeral+: {
      kubernetes_token_request_v1+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { ephemeral+: {
      kubernetes_token_request_v1+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { ephemeral+: {
      kubernetes_token_request_v1+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { ephemeral+: {
      kubernetes_token_request_v1+: { [terraformName]+: { [name]: value } },
    } },
    '#withExpirationTimestamp':: { 'function': {
      help:
        |||
          ExpirationTimestamp is the time of expiration of the returned token.
        |||,
    } },
    withExpirationTimestamp(value):: self { ephemeral+: {
      kubernetes_token_request_v1+: { [terraformName]+: { expiration_timestamp: value } },
    } },
    '#withToken':: { 'function': {
      help:
        |||
          Token is the opaque bearer token.
        |||,
    } },
    withToken(value):: self { ephemeral+: {
      kubernetes_token_request_v1+: { [terraformName]+: { token: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_token_request_v1.%s%s }' % [terraformName, suffix],
    fields:: {
      '#expiration_timestamp':: { 'function': {
        help:
          |||
            ExpirationTimestamp is the time of expiration of the returned token.
          |||,
      } },
      expiration_timestamp(suffix=''):: refSelf.plain('.expiration_timestamp%s' % suffix),
      '#token':: { 'function': {
        help:
          |||
            Token is the opaque bearer token.
          |||,
      } },
      token(suffix=''):: refSelf.plain('.token%s' % suffix),

    },

  },

}
