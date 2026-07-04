{
  '#new':: { 'function': { help: |||
    This resource allows Terraform to manage the labels for a resource that already exists. This resource uses [field management](https://kubernetes.io/docs/reference/using-api/server-side-apply/#field-management) and [server-side apply](https://kubernetes.io/docs/reference/using-api/server-side-apply/) to manage only the labels that are defined in the Terraform configuration. Existing labels not specified in the configuration will be ignored. If a label specified in the config and is already managed by another client it will cause a conflict which can be overridden by setting `force` to true.
  ||| } },
  local outerSelf = self,
  new(terraformName, api_version, kind, labels):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      kubernetes_labels+: {
        [terraformName]+: {
          api_version: api_version,
          kind: kind,
          labels: labels,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        kubernetes_labels+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        kubernetes_labels+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        kubernetes_labels+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        kubernetes_labels+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        kubernetes_labels+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        kubernetes_labels+: { [terraformName]+: { providers: value } },
      },
    },
    '#api_version':: { 'function': { help: |||
      The apiVersion of the resource to label.
    ||| } },
    withApiVersion(value):: self {
      resource+: {
        kubernetes_labels+: { [terraformName]+: { api_version: value } },
      },
    },
    '#field_manager':: { 'function': { help: |||
      Set the name of the field manager for the specified labels.
    ||| } },
    withFieldManager(value):: self {
      resource+: {
        kubernetes_labels+: { [terraformName]+: { field_manager: value } },
      },
    },
    '#force':: { 'function': { help: |||
      Force overwriting labels that were created or edited outside of Terraform.
    ||| } },
    withForce(value):: self {
      resource+: {
        kubernetes_labels+: { [terraformName]+: { force: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_labels+: { [terraformName]+: { id: value } },
      },
    },
    '#kind':: { 'function': { help: |||
      The kind of the resource to label.
    ||| } },
    withKind(value):: self {
      resource+: {
        kubernetes_labels+: { [terraformName]+: { kind: value } },
      },
    },
    '#labels':: { 'function': { help: |||
      A map of labels to apply to the resource.
    ||| } },
    withLabels(value):: self {
      resource+: {
        kubernetes_labels+: { [terraformName]+: { labels: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_labels.%s%s }' % [terraformName, suffix],
    fields:: {
      '#api_version':: { 'function': { help: |||
        The apiVersion of the resource to label.
      ||| } },
      api_version(suffix=''):: refSelf.plain('.api_version%s' % suffix),
      '#field_manager':: { 'function': { help: |||
        Set the name of the field manager for the specified labels.
      ||| } },
      field_manager(suffix=''):: refSelf.plain('.field_manager%s' % suffix),
      '#force':: { 'function': { help: |||
        Force overwriting labels that were created or edited outside of Terraform.
      ||| } },
      force(suffix=''):: refSelf.plain('.force%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#kind':: { 'function': { help: |||
        The kind of the resource to label.
      ||| } },
      kind(suffix=''):: refSelf.plain('.kind%s' % suffix),
      '#labels':: { 'function': { help: |||
        A map of labels to apply to the resource.
      ||| } },
      labels(suffix=''):: refSelf.plain('.labels%s' % suffix),
    },
  },
}
