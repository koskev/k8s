{
  local outerSelf = self,
  new(terraformName, manifest):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      kubernetes_manifest+: {
        [terraformName]+: {
          manifest: manifest,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        kubernetes_manifest+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        kubernetes_manifest+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        kubernetes_manifest+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        kubernetes_manifest+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        kubernetes_manifest+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        kubernetes_manifest+: { [terraformName]+: { providers: value } },
      },
    },
    '#computed_fields':: { 'function': { help: |||
      List of manifest fields whose values can be altered by the API server during 'apply'. Defaults to: ["metadata.annotations", "metadata.labels"]
    ||| } },
    withComputedFields(value):: self {
      resource+: {
        kubernetes_manifest+: { [terraformName]+: { computed_fields: value } },
      },
    },
    '#manifest':: { 'function': { help: |||
      A Kubernetes manifest describing the desired state of the resource in HCL format.
    ||| } },
    withManifest(value):: self {
      resource+: {
        kubernetes_manifest+: { [terraformName]+: { manifest: value } },
      },
    },
    '#object':: { 'function': { help: |||
      The resulting resource state, as returned by the API server after applying the desired state from `manifest`.
    ||| } },
    withObject(value):: self {
      resource+: {
        kubernetes_manifest+: { [terraformName]+: { object: value } },
      },
    },
    '#wait_for':: { 'function': { help: |||
      A map of attribute paths and desired patterns to be matched. After each apply the provider will wait for all attributes listed here to reach a value that matches the desired pattern.
    ||| } },
    withWaitFor(value):: self {
      resource+: {
        kubernetes_manifest+: { [terraformName]+: { wait_for: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_manifest.%s%s }' % [terraformName, suffix],
    fields:: {
      '#computed_fields':: { 'function': { help: |||
        List of manifest fields whose values can be altered by the API server during 'apply'. Defaults to: ["metadata.annotations", "metadata.labels"]
      ||| } },
      computed_fields(suffix=''):: refSelf.plain('.computed_fields%s' % suffix),
      '#manifest':: { 'function': { help: |||
        A Kubernetes manifest describing the desired state of the resource in HCL format.
      ||| } },
      manifest(suffix=''):: refSelf.plain('.manifest%s' % suffix),
      '#object':: { 'function': { help: |||
        The resulting resource state, as returned by the API server after applying the desired state from `manifest`.
      ||| } },
      object(suffix=''):: refSelf.plain('.object%s' % suffix),
      '#wait_for':: { 'function': { help: |||
        A map of attribute paths and desired patterns to be matched. After each apply the provider will wait for all attributes listed here to reach a value that matches the desired pattern.
      ||| } },
      wait_for(suffix=''):: refSelf.plain('.wait_for%s' % suffix),
    },
  },
}
