{
  new(terraformName):: self.functions(terraformName) {
    _type:: 'tf',
    data+: {
      vault_policy_document+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      data+: {
        vault_policy_document+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_policy_document+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_policy_document.%s%s }' % [terraformName, suffix],
    fields:: {
      '#hcl':: { 'function': { help: |||
        The above arguments serialized as a standard Vault HCL policy document. 
      ||| } },
      hcl(suffix=''):: refSelf.plain('.hcl%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
    },
  },
}
