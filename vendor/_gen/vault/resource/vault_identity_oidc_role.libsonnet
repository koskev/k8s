{
  local outerSelf = self,
  new(terraformName, key, name):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_identity_oidc_role+: { [terraformName]+: {
        key: key,
        name: name,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_identity_oidc_role+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_identity_oidc_role+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_identity_oidc_role+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_identity_oidc_role+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_identity_oidc_role+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_identity_oidc_role+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_identity_oidc_role+: { [terraformName]+: { [name]: value } },
    } },
    '#withClientId':: { 'function': {
      help:
        |||
          The value that will be included in the `aud` field of all the OIDC identity tokens issued by this role
        |||,
    } },
    withClientId(value):: self { resource+: {
      vault_identity_oidc_role+: { [terraformName]+: { client_id: value } },
    } },
    withId(value):: self { resource+: {
      vault_identity_oidc_role+: { [terraformName]+: { id: value } },
    } },
    '#withKey':: { 'function': {
      help:
        |||
          A configured named key, the key must already exist.
        |||,
    } },
    withKey(value):: self { resource+: {
      vault_identity_oidc_role+: { [terraformName]+: { key: value } },
    } },
    '#withName':: { 'function': {
      help:
        |||
          Name of the role.
        |||,
    } },
    withName(value):: self { resource+: {
      vault_identity_oidc_role+: { [terraformName]+: { name: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_identity_oidc_role+: { [terraformName]+: { namespace: value } },
    } },
    '#withTemplate':: { 'function': {
      help:
        |||
          The template string to use for generating tokens. This may be in string-ified JSON or base64 format.
        |||,
    } },
    withTemplate(value):: self { resource+: {
      vault_identity_oidc_role+: { [terraformName]+: { template: value } },
    } },
    '#withTtl':: { 'function': {
      help:
        |||
          TTL of the tokens generated against the role in number of seconds.
        |||,
    } },
    withTtl(value):: self { resource+: {
      vault_identity_oidc_role+: { [terraformName]+: { ttl: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_identity_oidc_role.%s%s }' % [terraformName, suffix],
    fields:: {
      '#client_id':: { 'function': {
        help:
          |||
            The value that will be included in the `aud` field of all the OIDC identity tokens issued by this role
          |||,
      } },
      client_id(suffix=''):: refSelf.plain('.client_id%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#key':: { 'function': {
        help:
          |||
            A configured named key, the key must already exist.
          |||,
      } },
      key(suffix=''):: refSelf.plain('.key%s' % suffix),
      '#name':: { 'function': {
        help:
          |||
            Name of the role.
          |||,
      } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#template':: { 'function': {
        help:
          |||
            The template string to use for generating tokens. This may be in string-ified JSON or base64 format.
          |||,
      } },
      template(suffix=''):: refSelf.plain('.template%s' % suffix),
      '#ttl':: { 'function': {
        help:
          |||
            TTL of the tokens generated against the role in number of seconds.
          |||,
      } },
      ttl(suffix=''):: refSelf.plain('.ttl%s' % suffix),

    },

  },

}
