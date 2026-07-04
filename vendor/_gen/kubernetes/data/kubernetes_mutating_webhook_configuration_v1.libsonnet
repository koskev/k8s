{
  '#new':: { 'function': { help: |||
    A Mutating Webhook Configuration configures a [mutating admission webhook](https://kubernetes.io/docs/reference/access-authn-authz/extensible-admission-controllers/#what-are-admission-webhooks). This data source allows you to pull data about a given mutating webhook configuration based on its name.
  ||| } },
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      kubernetes_mutating_webhook_configuration_v1+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      data+: {
        kubernetes_mutating_webhook_configuration_v1+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      data+: {
        kubernetes_mutating_webhook_configuration_v1+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      data+: {
        kubernetes_mutating_webhook_configuration_v1+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      data+: {
        kubernetes_mutating_webhook_configuration_v1+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      data+: {
        kubernetes_mutating_webhook_configuration_v1+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      data+: {
        kubernetes_mutating_webhook_configuration_v1+: { [terraformName]+: { providers: value } },
      },
    },
    withId(value):: self {
      data+: {
        kubernetes_mutating_webhook_configuration_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.kubernetes_mutating_webhook_configuration_v1.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#webhook':: { 'function': { help: |||
        Webhooks is a list of webhooks and the affected resources and operations.
      ||| } },
      webhook(suffix=''):: refSelf.plain('.webhook%s' % suffix),
    },
  },
}
