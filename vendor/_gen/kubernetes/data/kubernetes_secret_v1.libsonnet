{
  '#new':: { 'function': { help: |||
    The resource provides mechanisms to inject containers with sensitive information, such as passwords, while keeping containers agnostic of Kubernetes. Secrets can be used to store sensitive information either as individual properties or coarse-grained entries like entire files or JSON blobs. The resource will by default create a secret which is available to any pod in the specified (or default) namespace.
  ||| } },
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      kubernetes_secret_v1+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    '#withBinaryData':: { 'function': { help: |||
      A map of the secret data with values encoded in base64 format
    ||| } },
    withBinaryData(value):: self {
      data+: {
        kubernetes_secret_v1+: { [terraformName]+: { binary_data: value } },
      },
    },
    withId(value):: self {
      data+: {
        kubernetes_secret_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.kubernetes_secret_v1.%s%s }' % [terraformName, suffix],
    fields:: {
      '#binary_data':: { 'function': { help: |||
        A map of the secret data with values encoded in base64 format
      ||| } },
      binary_data(suffix=''):: refSelf.plain('.binary_data%s' % suffix),
      '#data':: { 'function': { help: |||
        A map of the secret data.
      ||| } },
      data(suffix=''):: refSelf.plain('.data%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#immutable':: { 'function': { help: |||
        Ensures that data stored in the Secret cannot be updated (only object metadata can be modified).
      ||| } },
      immutable(suffix=''):: refSelf.plain('.immutable%s' % suffix),
      '#type':: { 'function': { help: |||
        Type of secret
      ||| } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
    },
  },
}
