{
  new(terraformName, mount):: {
    _type:: 'tf',
    resource+: {
      vault_os_secret_backend+: { [terraformName]+: {
        mount: mount,
      } },
    },
    withSshHostKeyTrustOnFirstUse(value):: self {
      resource+: {
        vault_os_secret_backend+: { [terraformName]+: { ssh_host_key_trust_on_first_use: value } },
      },
    },
    withMaxVersions(value):: self {
      resource+: {
        vault_os_secret_backend+: { [terraformName]+: { max_versions: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_os_secret_backend+: { [terraformName]+: { namespace: value } },
      },
    },
    withMount(value):: self {
      resource+: {
        vault_os_secret_backend+: { [terraformName]+: { mount: value } },
      },
    },
  },
}
