{
  '#new':: { 'function': { help: |||
    Validating Webhook Configuration configures a [validating admission webhook](https://kubernetes.io/docs/reference/access-authn-authz/extensible-admission-controllers/#what-are-admission-webhooks).
  ||| } },
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      kubernetes_validating_webhook_configuration_v1+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      resource+: {
        kubernetes_validating_webhook_configuration_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_validating_webhook_configuration_v1.%s%s }' % [terraformName, suffix],
    fields:: {
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
    },
  },
}
