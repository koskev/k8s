{
  local outerSelf = self,
  new(terraformName, mount, role_name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      vault_ldap_dynamic_credentials+: {
        [terraformName]+: {
          mount: mount,
          role_name: role_name,
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      data+: {
        vault_ldap_dynamic_credentials+: { [terraformName]+: { id: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      LDAP Secret Backend to read credentials from.
    ||| } },
    withMount(value):: self {
      data+: {
        vault_ldap_dynamic_credentials+: { [terraformName]+: { mount: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_ldap_dynamic_credentials+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRoleName':: { 'function': { help: |||
      Name of the role.
    ||| } },
    withRoleName(value):: self {
      data+: {
        vault_ldap_dynamic_credentials+: { [terraformName]+: { role_name: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_ldap_dynamic_credentials.%s%s }' % [terraformName, suffix],
    fields:: {
      '#distinguished_names':: { 'function': { help: |||
        List of the distinguished names (DN) created.
      ||| } },
      distinguished_names(suffix=''):: refSelf.plain('.distinguished_names%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#lease_duration':: { 'function': { help: |||
        Lease duration in seconds.
      ||| } },
      lease_duration(suffix=''):: refSelf.plain('.lease_duration%s' % suffix),
      '#lease_id':: { 'function': { help: |||
        Lease identifier assigned by Vault.
      ||| } },
      lease_id(suffix=''):: refSelf.plain('.lease_id%s' % suffix),
      '#lease_renewable':: { 'function': { help: |||
        True if the duration of this lease can be extended through renewal.
      ||| } },
      lease_renewable(suffix=''):: refSelf.plain('.lease_renewable%s' % suffix),
      '#mount':: { 'function': { help: |||
        LDAP Secret Backend to read credentials from.
      ||| } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#password':: { 'function': { help: |||
        Password for the dynamic role.
      ||| } },
      password(suffix=''):: refSelf.plain('.password%s' % suffix),
      '#role_name':: { 'function': { help: |||
        Name of the role.
      ||| } },
      role_name(suffix=''):: refSelf.plain('.role_name%s' % suffix),
      '#username':: { 'function': { help: |||
        Name of the dynamic role.
      ||| } },
      username(suffix=''):: refSelf.plain('.username%s' % suffix),
    },
  },
}
