{
  new(terraformName, path, name):: {
    _type:: 'tf',
    data+: {
      vault_transit_cmac+: { [terraformName]+: {
        path: path,
        name: name,
      } },
    },
    withInput(value):: self {
      data+: {
        vault_transit_cmac+: { [terraformName]+: { input: value } },
      },
    },
    withMacLength(value):: self {
      data+: {
        vault_transit_cmac+: { [terraformName]+: { mac_length: value } },
      },
    },
    withPath(value):: self {
      data+: {
        vault_transit_cmac+: { [terraformName]+: { path: value } },
      },
    },
    withBatchResults(value):: self {
      data+: {
        vault_transit_cmac+: { [terraformName]+: { batch_results: value } },
      },
    },
    withUrlMacLength(value):: self {
      data+: {
        vault_transit_cmac+: { [terraformName]+: { url_mac_length: value } },
      },
    },
    withBatchInput(value):: self {
      data+: {
        vault_transit_cmac+: { [terraformName]+: { batch_input: value } },
      },
    },
    withName(value):: self {
      data+: {
        vault_transit_cmac+: { [terraformName]+: { name: value } },
      },
    },
    withCmac(value):: self {
      data+: {
        vault_transit_cmac+: { [terraformName]+: { cmac: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_transit_cmac+: { [terraformName]+: { id: value } },
      },
    },
    withKeyVersion(value):: self {
      data+: {
        vault_transit_cmac+: { [terraformName]+: { key_version: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_transit_cmac+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
