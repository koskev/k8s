{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_all_namespaces+: { [terraformName]+: {
      } },
    },
    withId(value):: self {
      data+: {
        kubernetes_all_namespaces+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespaces': { 'function': { help: |||
      List of all namespaces in a cluster. 
    ||| } },
    withNamespaces(value):: self {
      data+: {
        kubernetes_all_namespaces+: { [terraformName]+: { namespaces: value } },
      },
    },
  },
}
