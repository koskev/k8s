{
  new(terraformName, mount):: {
    _type:: 'tf',
    resource+: {
      vault_os_secret_backend+: { [terraformName]+: {
        mount: mount,
      } },
    },
    '#withMaxVersions': { 'function': { help: |||
      Maximum number of versions to keep for secrets. 
    ||| } },
    withMaxVersions(value):: self {
      resource+: {
        vault_os_secret_backend+: { [terraformName]+: { max_versions: value } },
      },
    },
    '#withMount': { 'function': { help: |||
      Path where the OS secrets backend is mounted. 
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_os_secret_backend+: { [terraformName]+: { mount: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_os_secret_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withSshHostKeyTrustOnFirstUse': { 'function': { help: |||
      Trust SSH host keys on first use. 
    ||| } },
    withSshHostKeyTrustOnFirstUse(value):: self {
      resource+: {
        vault_os_secret_backend+: { [terraformName]+: { ssh_host_key_trust_on_first_use: value } },
      },
    },
  },
}
