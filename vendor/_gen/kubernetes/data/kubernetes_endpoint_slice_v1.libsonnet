{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_endpoint_slice_v1+: { [terraformName]+: {
      } },
    },
    '#withAddressType':: { 'function': { help: |||
      address_type specifies the type of address carried by this EndpointSlice. All addresses in this slice must be the same type. This field is immutable after creation. 
    ||| } },
    withAddressType(value):: self {
      data+: {
        kubernetes_endpoint_slice_v1+: { [terraformName]+: { address_type: value } },
      },
    },
    '#withEndpoint':: { 'function': { help: |||
      endpoint is a list of unique endpoints in this slice. Each slice may include a maximum of 1000 endpoints. 
    ||| } },
    withEndpoint(value):: self {
      data+: {
        kubernetes_endpoint_slice_v1+: { [terraformName]+: { endpoint: value } },
      },
    },
    withId(value):: self {
      data+: {
        kubernetes_endpoint_slice_v1+: { [terraformName]+: { id: value } },
      },
    },
    '#withPort':: { 'function': { help: |||
      port specifies the list of network ports exposed by each endpoint in this slice. Each port must have a unique name. Each slice may include a maximum of 100 ports. 
    ||| } },
    withPort(value):: self {
      data+: {
        kubernetes_endpoint_slice_v1+: { [terraformName]+: { port: value } },
      },
    },
  },
}
