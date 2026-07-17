{
  local outerSelf = self,
  new(terraformName, mount, role_name):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    data+: {
      vault_ldap_static_credentials+: { [terraformName]+: {
        mount: mount,
        role_name: role_name,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { data+: {
      vault_ldap_static_credentials+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { data+: {
      vault_ldap_static_credentials+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { data+: {
      vault_ldap_static_credentials+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { data+: {
      vault_ldap_static_credentials+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { data+: {
      vault_ldap_static_credentials+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { data+: {
      vault_ldap_static_credentials+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { data+: {
      vault_ldap_static_credentials+: { [terraformName]+: { [name]: value } },
    } },
    withId(value):: self { data+: {
      vault_ldap_static_credentials+: { [terraformName]+: { id: value } },
    } },
    '#withMount':: { 'function': {
      help:
        |||
          LDAP Secret Backend to read credentials from.
        |||,
    } },
    withMount(value):: self { data+: {
      vault_ldap_static_credentials+: { [terraformName]+: { mount: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { data+: {
      vault_ldap_static_credentials+: { [terraformName]+: { namespace: value } },
    } },
    '#withRoleName':: { 'function': {
      help:
        |||
          Name of the role.
        |||,
    } },
    withRoleName(value):: self { data+: {
      vault_ldap_static_credentials+: { [terraformName]+: { role_name: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_ldap_static_credentials.%s%s }' % [terraformName, suffix],
    fields:: {
      '#dn':: { 'function': {
        help:
          |||
            Distinguished name (DN) of the existing LDAP entry to manage password rotation for.
          |||,
      } },
      dn(suffix=''):: refSelf.plain('.dn%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#last_password':: { 'function': {
        help:
          |||
            Last known password for the static role.
          |||,
      } },
      last_password(suffix=''):: refSelf.plain('.last_password%s' % suffix),
      '#last_vault_rotation':: { 'function': {
        help:
          |||
            Last time Vault rotated this static role's password.
          |||,
      } },
      last_vault_rotation(suffix=''):: refSelf.plain('.last_vault_rotation%s' % suffix),
      '#mount':: { 'function': {
        help:
          |||
            LDAP Secret Backend to read credentials from.
          |||,
      } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#password':: { 'function': {
        help:
          |||
            Password for the static role.
          |||,
      } },
      password(suffix=''):: refSelf.plain('.password%s' % suffix),
      '#role_name':: { 'function': {
        help:
          |||
            Name of the role.
          |||,
      } },
      role_name(suffix=''):: refSelf.plain('.role_name%s' % suffix),
      '#rotation_period':: { 'function': {
        help:
          |||
            How often Vault should rotate the password of the user entry.
          |||,
      } },
      rotation_period(suffix=''):: refSelf.plain('.rotation_period%s' % suffix),
      '#ttl':: { 'function': {
        help:
          |||
            Duration in seconds after which the issued credential should expire.
          |||,
      } },
      ttl(suffix=''):: refSelf.plain('.ttl%s' % suffix),
      '#username':: { 'function': {
        help:
          |||
            Name of the static role.
          |||,
      } },
      username(suffix=''):: refSelf.plain('.username%s' % suffix),

    },

  },

}
