{
  new(terraformName, api_version, kind):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      kubernetes_annotations+: {
        [terraformName]+: {
          api_version: api_version,
          kind: kind,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withAnnotations':: { 'function': { help: |||
      A map of annotations to apply to the resource. 
    ||| } },
    withAnnotations(value):: self {
      resource+: {
        kubernetes_annotations+: { [terraformName]+: { annotations: value } },
      },
    },
    '#withApiVersion':: { 'function': { help: |||
      The apiVersion of the resource to annotate. 
    ||| } },
    withApiVersion(value):: self {
      resource+: {
        kubernetes_annotations+: { [terraformName]+: { api_version: value } },
      },
    },
    '#withFieldManager':: { 'function': { help: |||
      Set the name of the field manager for the specified labels. 
    ||| } },
    withFieldManager(value):: self {
      resource+: {
        kubernetes_annotations+: { [terraformName]+: { field_manager: value } },
      },
    },
    '#withForce':: { 'function': { help: |||
      Force overwriting annotations that were created or edited outside of Terraform. 
    ||| } },
    withForce(value):: self {
      resource+: {
        kubernetes_annotations+: { [terraformName]+: { force: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_annotations+: { [terraformName]+: { id: value } },
      },
    },
    '#withKind':: { 'function': { help: |||
      The kind of the resource to annotate. 
    ||| } },
    withKind(value):: self {
      resource+: {
        kubernetes_annotations+: { [terraformName]+: { kind: value } },
      },
    },
    '#withTemplateAnnotations':: { 'function': { help: |||
      A map of annotations to apply to the resource template. 
    ||| } },
    withTemplateAnnotations(value):: self {
      resource+: {
        kubernetes_annotations+: { [terraformName]+: { template_annotations: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_annotations.%s%s }' % [terraformName, suffix],
    fields:: {
      '#annotations':: { 'function': { help: |||
        A map of annotations to apply to the resource. 
      ||| } },
      annotations(suffix=''):: refSelf.plain('.annotations%s' % suffix),
      '#api_version':: { 'function': { help: |||
        The apiVersion of the resource to annotate. 
      ||| } },
      api_version(suffix=''):: refSelf.plain('.api_version%s' % suffix),
      '#field_manager':: { 'function': { help: |||
        Set the name of the field manager for the specified labels. 
      ||| } },
      field_manager(suffix=''):: refSelf.plain('.field_manager%s' % suffix),
      '#force':: { 'function': { help: |||
        Force overwriting annotations that were created or edited outside of Terraform. 
      ||| } },
      force(suffix=''):: refSelf.plain('.force%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#kind':: { 'function': { help: |||
        The kind of the resource to annotate. 
      ||| } },
      kind(suffix=''):: refSelf.plain('.kind%s' % suffix),
      '#template_annotations':: { 'function': { help: |||
        A map of annotations to apply to the resource template. 
      ||| } },
      template_annotations(suffix=''):: refSelf.plain('.template_annotations%s' % suffix),
    },
  },
}
