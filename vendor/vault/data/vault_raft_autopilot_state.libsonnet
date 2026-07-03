{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      vault_raft_autopilot_state+: { [terraformName]+: {
      } },
    },
    withHealthy(value):: self {
      data+: {
        vault_raft_autopilot_state+: { [terraformName]+: { healthy: value } },
      },
    },
    withNamespace(value):: self {
      data+: {
        vault_raft_autopilot_state+: { [terraformName]+: { namespace: value } },
      },
    },
    withRedundancyZones(value):: self {
      data+: {
        vault_raft_autopilot_state+: { [terraformName]+: { redundancy_zones: value } },
      },
    },
    withUpgradeInfo(value):: self {
      data+: {
        vault_raft_autopilot_state+: { [terraformName]+: { upgrade_info: value } },
      },
    },
    withFailureTolerance(value):: self {
      data+: {
        vault_raft_autopilot_state+: { [terraformName]+: { failure_tolerance: value } },
      },
    },
    withLeader(value):: self {
      data+: {
        vault_raft_autopilot_state+: { [terraformName]+: { leader: value } },
      },
    },
    withOptimisticFailureTolerance(value):: self {
      data+: {
        vault_raft_autopilot_state+: { [terraformName]+: { optimistic_failure_tolerance: value } },
      },
    },
    withServers(value):: self {
      data+: {
        vault_raft_autopilot_state+: { [terraformName]+: { servers: value } },
      },
    },
    withServersJson(value):: self {
      data+: {
        vault_raft_autopilot_state+: { [terraformName]+: { servers_json: value } },
      },
    },
    withRedundancyZonesJson(value):: self {
      data+: {
        vault_raft_autopilot_state+: { [terraformName]+: { redundancy_zones_json: value } },
      },
    },
    withUpgradeInfoJson(value):: self {
      data+: {
        vault_raft_autopilot_state+: { [terraformName]+: { upgrade_info_json: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_raft_autopilot_state+: { [terraformName]+: { id: value } },
      },
    },
    withVoters(value):: self {
      data+: {
        vault_raft_autopilot_state+: { [terraformName]+: { voters: value } },
      },
    },
  },
}
