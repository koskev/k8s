{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_raft_autopilot+: { [terraformName]+: {
      } },
    },
    withNamespace(value):: self {
      resource+: {
        vault_raft_autopilot+: { [terraformName]+: { namespace: value } },
      },
    },
    withDeadServerLastContactThreshold(value):: self {
      resource+: {
        vault_raft_autopilot+: { [terraformName]+: { dead_server_last_contact_threshold: value } },
      },
    },
    withMinQuorum(value):: self {
      resource+: {
        vault_raft_autopilot+: { [terraformName]+: { min_quorum: value } },
      },
    },
    withServerStabilizationTime(value):: self {
      resource+: {
        vault_raft_autopilot+: { [terraformName]+: { server_stabilization_time: value } },
      },
    },
    withDisableUpgradeMigration(value):: self {
      resource+: {
        vault_raft_autopilot+: { [terraformName]+: { disable_upgrade_migration: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_raft_autopilot+: { [terraformName]+: { id: value } },
      },
    },
    withMaxTrailingLogs(value):: self {
      resource+: {
        vault_raft_autopilot+: { [terraformName]+: { max_trailing_logs: value } },
      },
    },
    withLastContactThreshold(value):: self {
      resource+: {
        vault_raft_autopilot+: { [terraformName]+: { last_contact_threshold: value } },
      },
    },
    withCleanupDeadServers(value):: self {
      resource+: {
        vault_raft_autopilot+: { [terraformName]+: { cleanup_dead_servers: value } },
      },
    },
  },
}
