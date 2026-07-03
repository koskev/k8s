{
  new(terraformName, manifest):: {
    _type:: 'tf',
    resource+: {
      kubernetes_manifest+: { [terraformName]+: {
        manifest: manifest,
      } },
    },
    withComputedFields(value):: self {
      resource+: {
        kubernetes_manifest+: { [terraformName]+: { computed_fields: value } },
      },
    },
    withObject(value):: self {
      resource+: {
        kubernetes_manifest+: { [terraformName]+: { object: value } },
      },
    },
    withManifest(value):: self {
      resource+: {
        kubernetes_manifest+: { [terraformName]+: { manifest: value } },
      },
    },
    withWaitFor(value):: self {
      resource+: {
        kubernetes_manifest+: { [terraformName]+: { wait_for: value } },
      },
    },
  },
}
