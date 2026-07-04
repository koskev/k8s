{
  '#new':: { 'function': { help: |||
    Provides a resource to manage Password Policies.
  ||| } },
  local outerSelf = self,
  new(terraformName, name, policy):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_password_policy+: {
        [terraformName]+: {
          name: name,
          policy: policy,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_password_policy+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_password_policy+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_password_policy+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_password_policy+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_password_policy+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_password_policy+: { [terraformName]+: { providers: value } },
      },
    },
    '#entropy_source':: { 'function': { help: |||
      Specifies an override to the default source of entropy (randomness) used to generate the passwords. Must be one of: '', 'platform', or 'seal'. Requires Vault 1.21+.
    ||| } },
    withEntropySource(value):: self {
      resource+: {
        vault_password_policy+: { [terraformName]+: { entropy_source: value } },
      },
    },
    '#name':: { 'function': { help: |||
      Name of the password policy.
    ||| } },
    withName(value):: self {
      resource+: {
        vault_password_policy+: { [terraformName]+: { name: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_password_policy+: { [terraformName]+: { namespace: value } },
      },
    },
    '#policy':: { 'function': { help: |||
      The password policy document
    ||| } },
    withPolicy(value):: self {
      resource+: {
        vault_password_policy+: { [terraformName]+: { policy: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_password_policy.%s%s }' % [terraformName, suffix],
    fields:: {
      '#entropy_source':: { 'function': { help: |||
        Specifies an override to the default source of entropy (randomness) used to generate the passwords. Must be one of: '', 'platform', or 'seal'. Requires Vault 1.21+.
      ||| } },
      entropy_source(suffix=''):: refSelf.plain('.entropy_source%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#name':: { 'function': { help: |||
        Name of the password policy.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#policy':: { 'function': { help: |||
        The password policy document
      ||| } },
      policy(suffix=''):: refSelf.plain('.policy%s' % suffix),
    },
  },
}
