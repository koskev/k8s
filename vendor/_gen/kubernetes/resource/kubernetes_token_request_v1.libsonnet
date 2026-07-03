{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_token_request_v1+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      resource+: {
        kubernetes_token_request_v1+: { [terraformName]+: { id: value } },
      },
    },
    '#withToken': { 'function': { help: |||
      Token is the opaque bearer token. 
    ||| } },
    withToken(value):: self {
      resource+: {
        kubernetes_token_request_v1+: { [terraformName]+: { token: value } },
      },
    },
  },
}
