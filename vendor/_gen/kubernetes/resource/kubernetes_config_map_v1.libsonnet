{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      kubernetes_config_map_v1+: { [terraformName]+: {
      } },
    },
    '#withBinaryData': { 'function': { help: |||
      BinaryData contains the binary data. Each key must consist of alphanumeric characters, '-', '_' or '.'. BinaryData can contain byte sequences that are not in the UTF-8 range. The keys stored in BinaryData must not overlap with the ones in the Data field, this is enforced during validation process. Using this field will require 1.10+ apiserver and kubelet. This field only accepts base64-encoded payloads that will be decoded/encoded before being sent/received to/from the apiserver. 
    ||| } },
    withBinaryData(value):: self {
      resource+: {
        kubernetes_config_map_v1+: { [terraformName]+: { binary_data: value } },
      },
    },
    '#withData': { 'function': { help: |||
      Data contains the configuration data. Each key must consist of alphanumeric characters, '-', '_' or '.'. Values with non-UTF-8 byte sequences must use the BinaryData field. The keys stored in Data must not overlap with the keys in the BinaryData field, this is enforced during validation process. 
    ||| } },
    withData(value):: self {
      resource+: {
        kubernetes_config_map_v1+: { [terraformName]+: { data: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_config_map_v1+: { [terraformName]+: { id: value } },
      },
    },
    '#withImmutable': { 'function': { help: |||
      Immutable, if set to true, ensures that data stored in the ConfigMap cannot be updated (only object metadata can be modified). If not set to true, the field can be modified at any time. Defaulted to nil. 
    ||| } },
    withImmutable(value):: self {
      resource+: {
        kubernetes_config_map_v1+: { [terraformName]+: { immutable: value } },
      },
    },
  },
}
