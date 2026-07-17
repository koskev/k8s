{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        An EndpointSlice contains references to a set of network endpoints. This data source allows you to pull data about such endpoint slice.
      |||,
  } },
  new(terraformName):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    data+: {
      kubernetes_endpoint_slice_v1+: { [terraformName]+: {
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { data+: {
      kubernetes_endpoint_slice_v1+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { data+: {
      kubernetes_endpoint_slice_v1+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { data+: {
      kubernetes_endpoint_slice_v1+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { data+: {
      kubernetes_endpoint_slice_v1+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { data+: {
      kubernetes_endpoint_slice_v1+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { data+: {
      kubernetes_endpoint_slice_v1+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { data+: {
      kubernetes_endpoint_slice_v1+: { [terraformName]+: { [name]: value } },
    } },
    withId(value):: self { data+: {
      kubernetes_endpoint_slice_v1+: { [terraformName]+: { id: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.kubernetes_endpoint_slice_v1.%s%s }' % [terraformName, suffix],
    fields:: {
      '#address_type':: { 'function': {
        help:
          |||
            address_type specifies the type of address carried by this EndpointSlice. All addresses in this slice must be the same type. This field is immutable after creation.
          |||,
      } },
      address_type(suffix=''):: refSelf.plain('.address_type%s' % suffix),
      '#endpoint':: { 'function': {
        help:
          |||
            endpoint is a list of unique endpoints in this slice. Each slice may include a maximum of 1000 endpoints.
          |||,
      } },
      endpoint(suffix=''):: refSelf.plain('.endpoint%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#port':: { 'function': {
        help:
          |||
            port specifies the list of network ports exposed by each endpoint in this slice. Each port must have a unique name. Each slice may include a maximum of 100 ports.
          |||,
      } },
      port(suffix=''):: refSelf.plain('.port%s' % suffix),

    },

  },

}
