{
  new(terraformName, manifest):: {
    _type:: 'tf',
    resource+: {
      kubernetes_manifest+: { [terraformName]+: {
        manifest: manifest,
      } },
    },
    '#withComputedFields': { 'function': { help: |||
      List of manifest fields whose values can be altered by the API server during 'apply'. Defaults to: ["metadata.annotations", "metadata.labels"] 
    ||| } },
    withComputedFields(value):: self {
      resource+: {
        kubernetes_manifest+: { [terraformName]+: { computed_fields: value } },
      },
    },
    '#withManifest': { 'function': { help: |||
      A Kubernetes manifest describing the desired state of the resource in HCL format. 
    ||| } },
    withManifest(value):: self {
      resource+: {
        kubernetes_manifest+: { [terraformName]+: { manifest: value } },
      },
    },
    '#withObject': { 'function': { help: |||
      The resulting resource state, as returned by the API server after applying the desired state from `manifest`. 
    ||| } },
    withObject(value):: self {
      resource+: {
        kubernetes_manifest+: { [terraformName]+: { object: value } },
      },
    },
    '#withWaitFor': { 'function': { help: |||
      A map of attribute paths and desired patterns to be matched. After each apply the provider will wait for all attributes listed here to reach a value that matches the desired pattern. 
    ||| } },
    withWaitFor(value):: self {
      resource+: {
        kubernetes_manifest+: { [terraformName]+: { wait_for: value } },
      },
    },
  },
}
