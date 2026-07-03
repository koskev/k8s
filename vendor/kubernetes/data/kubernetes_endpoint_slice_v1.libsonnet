{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_endpoint_slice_v1+: { [terraformName]+: {
      } },
    },
    withAddressType(value):: self {
      data+: {
        kubernetes_endpoint_slice_v1+: { [terraformName]+: { address_type: value } },
      },
    },
    withPort(value):: self {
      data+: {
        kubernetes_endpoint_slice_v1+: { [terraformName]+: { port: value } },
      },
    },
    withId(value):: self {
      data+: {
        kubernetes_endpoint_slice_v1+: { [terraformName]+: { id: value } },
      },
    },
    withEndpoint(value):: self {
      data+: {
        kubernetes_endpoint_slice_v1+: { [terraformName]+: { endpoint: value } },
      },
    },
  },
}
