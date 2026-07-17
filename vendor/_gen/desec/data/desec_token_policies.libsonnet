{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Retrieves all scoping policies for a given deSEC API token.
      |||,
  } },
  new(terraformName, token_id):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    data+: {
      desec_token_policies+: { [terraformName]+: {
        token_id: token_id,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { data+: {
      desec_token_policies+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { data+: {
      desec_token_policies+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { data+: {
      desec_token_policies+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { data+: {
      desec_token_policies+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { data+: {
      desec_token_policies+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { data+: {
      desec_token_policies+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { data+: {
      desec_token_policies+: { [terraformName]+: { [name]: value } },
    } },
    '#withTokenId':: { 'function': {
      help:
        |||
          The UUID of the token whose policies to list.
        |||,
    } },
    withTokenId(value):: self { data+: {
      desec_token_policies+: { [terraformName]+: { token_id: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.desec_token_policies.%s%s }' % [terraformName, suffix],
    fields:: {
      '#policies':: { 'function': {
        help:
          |||
            List of all scoping policies for the token.
          |||,
      } },
      policies(suffix=''):: refSelf.plain('.policies%s' % suffix),
      '#token_id':: { 'function': {
        help:
          |||
            The UUID of the token whose policies to list.
          |||,
      } },
      token_id(suffix=''):: refSelf.plain('.token_id%s' % suffix),

    },

  },

}
