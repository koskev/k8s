{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      vault_raft_autopilot_state+: { [terraformName]+: {
      } },
    },
    '#withFailureTolerance':: { 'function': { help: |||
      How many nodes could fail before the cluster becomes unhealthy 
    ||| } },
    withFailureTolerance(value):: self {
      data+: {
        vault_raft_autopilot_state+: { [terraformName]+: { failure_tolerance: value } },
      },
    },
    '#withHealthy':: { 'function': { help: |||
      Health status 
    ||| } },
    withHealthy(value):: self {
      data+: {
        vault_raft_autopilot_state+: { [terraformName]+: { healthy: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_raft_autopilot_state+: { [terraformName]+: { id: value } },
      },
    },
    '#withLeader':: { 'function': { help: |||
      Current leader of Vault 
    ||| } },
    withLeader(value):: self {
      data+: {
        vault_raft_autopilot_state+: { [terraformName]+: { leader: value } },
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
    '#withOptimisticFailureTolerance':: { 'function': { help: |||
      The cluster-level optimistic failure tolerance. 
    ||| } },
    withOptimisticFailureTolerance(value):: self {
      data+: {
        vault_raft_autopilot_state+: { [terraformName]+: { optimistic_failure_tolerance: value } },
      },
    },
    '#withRedundancyZones':: { 'function': { help: |||
      Additional output related to redundancy zones stored as a map of strings. 
    ||| } },
    withRedundancyZones(value):: self {
      data+: {
        vault_raft_autopilot_state+: { [terraformName]+: { redundancy_zones: value } },
      },
    },
    '#withRedundancyZonesJson':: { 'function': { help: |||
      Subkeys for the redundancy zones read from Vault. 
    ||| } },
    withRedundancyZonesJson(value):: self {
      data+: {
        vault_raft_autopilot_state+: { [terraformName]+: { redundancy_zones_json: value } },
      },
    },
    '#withServers':: { 'function': { help: |||
      Additional output related to servers stored as a map of strings. 
    ||| } },
    withServers(value):: self {
      data+: {
        vault_raft_autopilot_state+: { [terraformName]+: { servers: value } },
      },
    },
    '#withServersJson':: { 'function': { help: |||
      Subkeys for the servers read from Vault. 
    ||| } },
    withServersJson(value):: self {
      data+: {
        vault_raft_autopilot_state+: { [terraformName]+: { servers_json: value } },
      },
    },
    '#withUpgradeInfo':: { 'function': { help: |||
      Additional output related to upgrade info stored as a map of strings. 
    ||| } },
    withUpgradeInfo(value):: self {
      data+: {
        vault_raft_autopilot_state+: { [terraformName]+: { upgrade_info: value } },
      },
    },
    '#withUpgradeInfoJson':: { 'function': { help: |||
      Subkeys for the servers read from Vault. 
    ||| } },
    withUpgradeInfoJson(value):: self {
      data+: {
        vault_raft_autopilot_state+: { [terraformName]+: { upgrade_info_json: value } },
      },
    },
    '#withVoters':: { 'function': { help: |||
      The voters in the Vault cluster. 
    ||| } },
    withVoters(value):: self {
      data+: {
        vault_raft_autopilot_state+: { [terraformName]+: { voters: value } },
      },
    },
  },
}
