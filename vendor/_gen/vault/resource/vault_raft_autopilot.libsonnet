{
  new(terraformName):: {
    _type:: 'tf',
    resource+: {
      vault_raft_autopilot+: { [terraformName]+: {
      } },
    },
    '#withCleanupDeadServers': { 'function': { help: |||
      Specifies whether to remove dead server nodes periodically or when a new server joins. This requires that min-quorum is also set. 
    ||| } },
    withCleanupDeadServers(value):: self {
      resource+: {
        vault_raft_autopilot+: { [terraformName]+: { cleanup_dead_servers: value } },
      },
    },
    '#withDeadServerLastContactThreshold': { 'function': { help: |||
      Limit the amount of time a server can go without leader contact before being considered failed. This only takes effect when cleanup_dead_servers is set. 
    ||| } },
    withDeadServerLastContactThreshold(value):: self {
      resource+: {
        vault_raft_autopilot+: { [terraformName]+: { dead_server_last_contact_threshold: value } },
      },
    },
    '#withDisableUpgradeMigration': { 'function': { help: |||
      Disables automatically upgrading Vault using autopilot. (Enterprise-only) 
    ||| } },
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
    '#withLastContactThreshold': { 'function': { help: |||
      Limit the amount of time a server can go without leader contact before being considered unhealthy. 
    ||| } },
    withLastContactThreshold(value):: self {
      resource+: {
        vault_raft_autopilot+: { [terraformName]+: { last_contact_threshold: value } },
      },
    },
    '#withMaxTrailingLogs': { 'function': { help: |||
      Maximum number of log entries in the Raft log that a server can be behind its leader before being considered unhealthy. 
    ||| } },
    withMaxTrailingLogs(value):: self {
      resource+: {
        vault_raft_autopilot+: { [terraformName]+: { max_trailing_logs: value } },
      },
    },
    '#withMinQuorum': { 'function': { help: |||
      Minimum number of servers allowed in a cluster before autopilot can prune dead servers. This should at least be 3. Applicable only for voting nodes. 
    ||| } },
    withMinQuorum(value):: self {
      resource+: {
        vault_raft_autopilot+: { [terraformName]+: { min_quorum: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_raft_autopilot+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withServerStabilizationTime': { 'function': { help: |||
      Minimum amount of time a server must be stable in the 'healthy' state before being added to the cluster. 
    ||| } },
    withServerStabilizationTime(value):: self {
      resource+: {
        vault_raft_autopilot+: { [terraformName]+: { server_stabilization_time: value } },
      },
    },
  },
}
