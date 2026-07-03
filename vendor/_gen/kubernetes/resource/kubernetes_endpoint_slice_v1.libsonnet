{
  new(terraformName, address_type):: {
    _type:: 'tf',
    resource+: {
      kubernetes_endpoint_slice_v1+: { [terraformName]+: {
        address_type: address_type,
      } },
    },
    '#withAddressType':: { 'function': { help: |||
      address_type specifies the type of address carried by this EndpointSlice. All addresses in this slice must be the same type. This field is immutable after creation. 
    ||| } },
    withAddressType(value):: self {
      resource+: {
        kubernetes_endpoint_slice_v1+: { [terraformName]+: { address_type: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_endpoint_slice_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
}
