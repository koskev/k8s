{
  local outerSelf = self,
  new(terraformName, backend, role):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    data+: {
      vault_nomad_access_token+: { [terraformName]+: {
        backend: backend,
        role: role,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { data+: {
      vault_nomad_access_token+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { data+: {
      vault_nomad_access_token+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { data+: {
      vault_nomad_access_token+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { data+: {
      vault_nomad_access_token+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { data+: {
      vault_nomad_access_token+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { data+: {
      vault_nomad_access_token+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { data+: {
      vault_nomad_access_token+: { [terraformName]+: { [name]: value } },
    } },
    '#withBackend':: { 'function': {
      help:
        |||
          Nomad secret backend to generate tokens from.
        |||,
    } },
    withBackend(value):: self { data+: {
      vault_nomad_access_token+: { [terraformName]+: { backend: value } },
    } },
    withId(value):: self { data+: {
      vault_nomad_access_token+: { [terraformName]+: { id: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { data+: {
      vault_nomad_access_token+: { [terraformName]+: { namespace: value } },
    } },
    '#withRole':: { 'function': {
      help:
        |||
          Name of the role.
        |||,
    } },
    withRole(value):: self { data+: {
      vault_nomad_access_token+: { [terraformName]+: { role: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_nomad_access_token.%s%s }' % [terraformName, suffix],
    fields:: {
      '#accessor_id':: { 'function': {
        help:
          |||
            The public identifier for a specific token. It can be used to look up information about a token or to revoke a token.
          |||,
      } },
      accessor_id(suffix=''):: refSelf.plain('.accessor_id%s' % suffix),
      '#backend':: { 'function': {
        help:
          |||
            Nomad secret backend to generate tokens from.
          |||,
      } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#role':: { 'function': {
        help:
          |||
            Name of the role.
          |||,
      } },
      role(suffix=''):: refSelf.plain('.role%s' % suffix),
      '#secret_id':: { 'function': {
        help:
          |||
            Used to make requests to Nomad and should be kept private.
          |||,
      } },
      secret_id(suffix=''):: refSelf.plain('.secret_id%s' % suffix),

    },

  },

}
