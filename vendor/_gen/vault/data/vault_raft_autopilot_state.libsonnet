{
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      vault_raft_autopilot_state+: {
        [terraformName]+: {
        },
      },
    },
  },
  functions(terraformName):: {
    withId(value):: self {
      data+: {
        vault_raft_autopilot_state+: { [terraformName]+: { id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_raft_autopilot_state+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_raft_autopilot_state.%s%s }' % [terraformName, suffix],
    fields:: {
      '#failure_tolerance':: { 'function': { help: |||
        How many nodes could fail before the cluster becomes unhealthy
      ||| } },
      failure_tolerance(suffix=''):: refSelf.plain('.failure_tolerance%s' % suffix),
      '#healthy':: { 'function': { help: |||
        Health status
      ||| } },
      healthy(suffix=''):: refSelf.plain('.healthy%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#leader':: { 'function': { help: |||
        Current leader of Vault
      ||| } },
      leader(suffix=''):: refSelf.plain('.leader%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#optimistic_failure_tolerance':: { 'function': { help: |||
        The cluster-level optimistic failure tolerance.
      ||| } },
      optimistic_failure_tolerance(suffix=''):: refSelf.plain('.optimistic_failure_tolerance%s' % suffix),
      '#redundancy_zones':: { 'function': { help: |||
        Additional output related to redundancy zones stored as a map of strings.
      ||| } },
      redundancy_zones(suffix=''):: refSelf.plain('.redundancy_zones%s' % suffix),
      '#redundancy_zones_json':: { 'function': { help: |||
        Subkeys for the redundancy zones read from Vault.
      ||| } },
      redundancy_zones_json(suffix=''):: refSelf.plain('.redundancy_zones_json%s' % suffix),
      '#servers':: { 'function': { help: |||
        Additional output related to servers stored as a map of strings.
      ||| } },
      servers(suffix=''):: refSelf.plain('.servers%s' % suffix),
      '#servers_json':: { 'function': { help: |||
        Subkeys for the servers read from Vault.
      ||| } },
      servers_json(suffix=''):: refSelf.plain('.servers_json%s' % suffix),
      '#upgrade_info':: { 'function': { help: |||
        Additional output related to upgrade info stored as a map of strings.
      ||| } },
      upgrade_info(suffix=''):: refSelf.plain('.upgrade_info%s' % suffix),
      '#upgrade_info_json':: { 'function': { help: |||
        Subkeys for the servers read from Vault.
      ||| } },
      upgrade_info_json(suffix=''):: refSelf.plain('.upgrade_info_json%s' % suffix),
      '#voters':: { 'function': { help: |||
        The voters in the Vault cluster.
      ||| } },
      voters(suffix=''):: refSelf.plain('.voters%s' % suffix),
    },
  },
}
