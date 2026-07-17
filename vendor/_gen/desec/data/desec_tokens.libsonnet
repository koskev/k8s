{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Retrieves a list of all deSEC API tokens for the authenticated account. Token secret values are never included.
      |||,
  } },
  new(terraformName):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    data+: {
      desec_tokens+: { [terraformName]+: {
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { data+: {
      desec_tokens+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { data+: {
      desec_tokens+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { data+: {
      desec_tokens+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { data+: {
      desec_tokens+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { data+: {
      desec_tokens+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { data+: {
      desec_tokens+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { data+: {
      desec_tokens+: { [terraformName]+: { [name]: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.desec_tokens.%s%s }' % [terraformName, suffix],
    fields:: {
      '#tokens':: { 'function': {
        help:
          |||
            List of all tokens in the account.
          |||,
      } },
      tokens(suffix=''):: refSelf.plain('.tokens%s' % suffix),

    },

  },

}
