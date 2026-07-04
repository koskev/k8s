{
  '#new':: { 'function': { help: |||
    An EndpointSlice contains references to a set of network endpoints.
  ||| } },
  local outerSelf = self,
  new(terraformName, address_type):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      kubernetes_endpoint_slice_v1+: {
        [terraformName]+: {
          address_type: address_type,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        kubernetes_endpoint_slice_v1+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        kubernetes_endpoint_slice_v1+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        kubernetes_endpoint_slice_v1+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        kubernetes_endpoint_slice_v1+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        kubernetes_endpoint_slice_v1+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        kubernetes_endpoint_slice_v1+: { [terraformName]+: { providers: value } },
      },
    },
    '#address_type':: { 'function': { help: |||
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
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_endpoint_slice_v1.%s%s }' % [terraformName, suffix],
    fields:: {
      '#address_type':: { 'function': { help: |||
        address_type specifies the type of address carried by this EndpointSlice. All addresses in this slice must be the same type. This field is immutable after creation.
      ||| } },
      address_type(suffix=''):: refSelf.plain('.address_type%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
    },
  },
}
