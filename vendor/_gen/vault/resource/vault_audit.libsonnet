{
  new(terraformName, options, type):: {
    _type:: 'tf',
    resource+: {
      vault_audit+: { [terraformName]+: {
        options: options,
        type: type,
      } },
    },
    '#withDescription': { 'function': { help: |||
      Human-friendly description of the audit device. 
    ||| } },
    withDescription(value):: self {
      resource+: {
        vault_audit+: { [terraformName]+: { description: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_audit+: { [terraformName]+: { id: value } },
      },
    },
    '#withLocal': { 'function': { help: |||
      Specifies if the audit device is a local only. Local audit devices are not replicated nor (if a secondary) removed by replication. 
    ||| } },
    withLocal(value):: self {
      resource+: {
        vault_audit+: { [terraformName]+: { 'local': value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_audit+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOptions': { 'function': { help: |||
      Configuration options to pass to the audit device itself. 
    ||| } },
    withOptions(value):: self {
      resource+: {
        vault_audit+: { [terraformName]+: { options: value } },
      },
    },
    '#withPath': { 'function': { help: |||
      Path in which to enable the audit device. 
    ||| } },
    withPath(value):: self {
      resource+: {
        vault_audit+: { [terraformName]+: { path: value } },
      },
    },
    '#withType': { 'function': { help: |||
      Type of the audit device, such as 'file'. 
    ||| } },
    withType(value):: self {
      resource+: {
        vault_audit+: { [terraformName]+: { type: value } },
      },
    },
  },
}
