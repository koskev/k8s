{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_all_namespaces+: { [terraformName]+: {
      } },
    },
    withNamespaces(value):: self {
      data+: {
        kubernetes_all_namespaces+: { [terraformName]+: { namespaces: value } },
      },
    },
    withId(value):: self {
      data+: {
        kubernetes_all_namespaces+: { [terraformName]+: { id: value } },
      },
    },
  },
}
