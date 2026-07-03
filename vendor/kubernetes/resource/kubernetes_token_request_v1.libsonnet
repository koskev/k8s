{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_token_request_v1+: { [terraformName]+: {
      } },
    },
    withToken(value):: self {
      resource+: {
        kubernetes_token_request_v1+: { [terraformName]+: { token: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_token_request_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
}
