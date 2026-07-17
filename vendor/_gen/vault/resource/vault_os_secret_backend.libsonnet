{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Manages the configuration of an existing OS Secrets Engine mount in Vault.
      |||,
  } },
  new(terraformName, mount):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_os_secret_backend+: { [terraformName]+: {
        mount: mount,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_os_secret_backend+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_os_secret_backend+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_os_secret_backend+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_os_secret_backend+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_os_secret_backend+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_os_secret_backend+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_os_secret_backend+: { [terraformName]+: { [name]: value } },
    } },
    '#withMaxVersions':: { 'function': {
      help:
        |||
          Maximum number of versions to keep for secrets.
        |||,
    } },
    withMaxVersions(value):: self { resource+: {
      vault_os_secret_backend+: { [terraformName]+: { max_versions: value } },
    } },
    '#withMount':: { 'function': {
      help:
        |||
          Path where the OS secrets backend is mounted.
        |||,
    } },
    withMount(value):: self { resource+: {
      vault_os_secret_backend+: { [terraformName]+: { mount: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_os_secret_backend+: { [terraformName]+: { namespace: value } },
    } },
    '#withSshHostKeyTrustOnFirstUse':: { 'function': {
      help:
        |||
          Trust SSH host keys on first use.
        |||,
    } },
    withSshHostKeyTrustOnFirstUse(value):: self { resource+: {
      vault_os_secret_backend+: { [terraformName]+: { ssh_host_key_trust_on_first_use: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_os_secret_backend.%s%s }' % [terraformName, suffix],
    fields:: {
      '#max_versions':: { 'function': {
        help:
          |||
            Maximum number of versions to keep for secrets.
          |||,
      } },
      max_versions(suffix=''):: refSelf.plain('.max_versions%s' % suffix),
      '#mount':: { 'function': {
        help:
          |||
            Path where the OS secrets backend is mounted.
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
      '#ssh_host_key_trust_on_first_use':: { 'function': {
        help:
          |||
            Trust SSH host keys on first use.
          |||,
      } },
      ssh_host_key_trust_on_first_use(suffix=''):: refSelf.plain('.ssh_host_key_trust_on_first_use%s' % suffix),

    },

  },

}
