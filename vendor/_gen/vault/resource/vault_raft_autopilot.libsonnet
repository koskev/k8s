{
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_raft_autopilot+: { [terraformName]+: {
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_raft_autopilot+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_raft_autopilot+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_raft_autopilot+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_raft_autopilot+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_raft_autopilot+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_raft_autopilot+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_raft_autopilot+: { [terraformName]+: { [name]: value } },
    } },
    '#withCleanupDeadServers':: { 'function': {
      help:
        |||
          Specifies whether to remove dead server nodes periodically or when a new server joins. This requires that min-quorum is also set.
        |||,
    } },
    withCleanupDeadServers(value):: self { resource+: {
      vault_raft_autopilot+: { [terraformName]+: { cleanup_dead_servers: value } },
    } },
    '#withDeadServerLastContactThreshold':: { 'function': {
      help:
        |||
          Limit the amount of time a server can go without leader contact before being considered failed. This only takes effect when cleanup_dead_servers is set.
        |||,
    } },
    withDeadServerLastContactThreshold(value):: self { resource+: {
      vault_raft_autopilot+: { [terraformName]+: { dead_server_last_contact_threshold: value } },
    } },
    '#withDisableUpgradeMigration':: { 'function': {
      help:
        |||
          Disables automatically upgrading Vault using autopilot. (Enterprise-only)
        |||,
    } },
    withDisableUpgradeMigration(value):: self { resource+: {
      vault_raft_autopilot+: { [terraformName]+: { disable_upgrade_migration: value } },
    } },
    withId(value):: self { resource+: {
      vault_raft_autopilot+: { [terraformName]+: { id: value } },
    } },
    '#withLastContactThreshold':: { 'function': {
      help:
        |||
          Limit the amount of time a server can go without leader contact before being considered unhealthy.
        |||,
    } },
    withLastContactThreshold(value):: self { resource+: {
      vault_raft_autopilot+: { [terraformName]+: { last_contact_threshold: value } },
    } },
    '#withMaxTrailingLogs':: { 'function': {
      help:
        |||
          Maximum number of log entries in the Raft log that a server can be behind its leader before being considered unhealthy.
        |||,
    } },
    withMaxTrailingLogs(value):: self { resource+: {
      vault_raft_autopilot+: { [terraformName]+: { max_trailing_logs: value } },
    } },
    '#withMinQuorum':: { 'function': {
      help:
        |||
          Minimum number of servers allowed in a cluster before autopilot can prune dead servers. This should at least be 3. Applicable only for voting nodes.
        |||,
    } },
    withMinQuorum(value):: self { resource+: {
      vault_raft_autopilot+: { [terraformName]+: { min_quorum: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_raft_autopilot+: { [terraformName]+: { namespace: value } },
    } },
    '#withServerStabilizationTime':: { 'function': {
      help:
        |||
          Minimum amount of time a server must be stable in the 'healthy' state before being added to the cluster.
        |||,
    } },
    withServerStabilizationTime(value):: self { resource+: {
      vault_raft_autopilot+: { [terraformName]+: { server_stabilization_time: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_raft_autopilot.%s%s }' % [terraformName, suffix],
    fields:: {
      '#cleanup_dead_servers':: { 'function': {
        help:
          |||
            Specifies whether to remove dead server nodes periodically or when a new server joins. This requires that min-quorum is also set.
          |||,
      } },
      cleanup_dead_servers(suffix=''):: refSelf.plain('.cleanup_dead_servers%s' % suffix),
      '#dead_server_last_contact_threshold':: { 'function': {
        help:
          |||
            Limit the amount of time a server can go without leader contact before being considered failed. This only takes effect when cleanup_dead_servers is set.
          |||,
      } },
      dead_server_last_contact_threshold(suffix=''):: refSelf.plain('.dead_server_last_contact_threshold%s' % suffix),
      '#disable_upgrade_migration':: { 'function': {
        help:
          |||
            Disables automatically upgrading Vault using autopilot. (Enterprise-only)
          |||,
      } },
      disable_upgrade_migration(suffix=''):: refSelf.plain('.disable_upgrade_migration%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#last_contact_threshold':: { 'function': {
        help:
          |||
            Limit the amount of time a server can go without leader contact before being considered unhealthy.
          |||,
      } },
      last_contact_threshold(suffix=''):: refSelf.plain('.last_contact_threshold%s' % suffix),
      '#max_trailing_logs':: { 'function': {
        help:
          |||
            Maximum number of log entries in the Raft log that a server can be behind its leader before being considered unhealthy.
          |||,
      } },
      max_trailing_logs(suffix=''):: refSelf.plain('.max_trailing_logs%s' % suffix),
      '#min_quorum':: { 'function': {
        help:
          |||
            Minimum number of servers allowed in a cluster before autopilot can prune dead servers. This should at least be 3. Applicable only for voting nodes.
          |||,
      } },
      min_quorum(suffix=''):: refSelf.plain('.min_quorum%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#server_stabilization_time':: { 'function': {
        help:
          |||
            Minimum amount of time a server must be stable in the 'healthy' state before being added to the cluster.
          |||,
      } },
      server_stabilization_time(suffix=''):: refSelf.plain('.server_stabilization_time%s' % suffix),

    },

  },

}
