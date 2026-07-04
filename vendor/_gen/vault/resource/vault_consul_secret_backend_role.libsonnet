{
  local outerSelf = self,
  new(terraformName, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_consul_secret_backend_role+: {
        [terraformName]+: {
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { providers: value } },
      },
    },
    '#backend':: { 'function': { help: |||
      The path of the Consul Secret Backend the role belongs to.
    ||| } },
    withBackend(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { backend: value } },
      },
    },
    '#consul_namespace':: { 'function': { help: |||
      The Consul namespace that the token will be created in. Applicable for Vault 1.10+ and Consul 1.7+
    ||| } },
    withConsulNamespace(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { consul_namespace: value } },
      },
    },
    '#consul_policies':: { 'function': { help: |||
      List of Consul policies to associate with this role
    ||| } },
    withConsulPolicies(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { consul_policies: value } },
      },
    },
    '#consul_roles':: { 'function': { help: |||
      Set of Consul roles to attach to the token. Applicable for Vault 1.10+ with Consul 1.5+
    ||| } },
    withConsulRoles(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { consul_roles: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { id: value } },
      },
    },
    '#local':: { 'function': { help: |||
      Indicates that the token should not be replicated globally and instead be local to the current datacenter.
    ||| } },
    withLocal(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { 'local': value } },
      },
    },
    '#max_ttl':: { 'function': { help: |||
      Maximum TTL for leases associated with this role, in seconds.
    ||| } },
    withMaxTtl(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { max_ttl: value } },
      },
    },
    '#name':: { 'function': { help: |||
      The name of an existing role against which to create this Consul credential
    ||| } },
    withName(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { name: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#node_identities':: { 'function': { help: |||
      Set of Consul node identities to attach to
      				the token. Applicable for Vault 1.11+ with Consul 1.8+
    ||| } },
    withNodeIdentities(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { node_identities: value } },
      },
    },
    '#partition':: { 'function': { help: |||
      The Consul admin partition that the token will be created in. Applicable for Vault 1.10+ and Consul 1.11+
    ||| } },
    withPartition(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { partition: value } },
      },
    },
    '#policies':: { 'function': { help: |||
      List of Consul policies to associate with this role
    ||| } },
    withPolicies(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { policies: value } },
      },
    },
    '#service_identities':: { 'function': { help: |||
      Set of Consul service identities to attach to
      				the token. Applicable for Vault 1.11+ with Consul 1.5+
    ||| } },
    withServiceIdentities(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { service_identities: value } },
      },
    },
    '#ttl':: { 'function': { help: |||
      Specifies the TTL for this role.
    ||| } },
    withTtl(value):: self {
      resource+: {
        vault_consul_secret_backend_role+: { [terraformName]+: { ttl: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_consul_secret_backend_role.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': { help: |||
        The path of the Consul Secret Backend the role belongs to.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#consul_namespace':: { 'function': { help: |||
        The Consul namespace that the token will be created in. Applicable for Vault 1.10+ and Consul 1.7+
      ||| } },
      consul_namespace(suffix=''):: refSelf.plain('.consul_namespace%s' % suffix),
      '#consul_policies':: { 'function': { help: |||
        List of Consul policies to associate with this role
      ||| } },
      consul_policies(suffix=''):: refSelf.plain('.consul_policies%s' % suffix),
      '#consul_roles':: { 'function': { help: |||
        Set of Consul roles to attach to the token. Applicable for Vault 1.10+ with Consul 1.5+
      ||| } },
      consul_roles(suffix=''):: refSelf.plain('.consul_roles%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#local':: { 'function': { help: |||
        Indicates that the token should not be replicated globally and instead be local to the current datacenter.
      ||| } },
      'local'(suffix=''):: refSelf.plain('.local%s' % suffix),
      '#max_ttl':: { 'function': { help: |||
        Maximum TTL for leases associated with this role, in seconds.
      ||| } },
      max_ttl(suffix=''):: refSelf.plain('.max_ttl%s' % suffix),
      '#name':: { 'function': { help: |||
        The name of an existing role against which to create this Consul credential
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#node_identities':: { 'function': { help: |||
        Set of Consul node identities to attach to
        				the token. Applicable for Vault 1.11+ with Consul 1.8+
      ||| } },
      node_identities(suffix=''):: refSelf.plain('.node_identities%s' % suffix),
      '#partition':: { 'function': { help: |||
        The Consul admin partition that the token will be created in. Applicable for Vault 1.10+ and Consul 1.11+
      ||| } },
      partition(suffix=''):: refSelf.plain('.partition%s' % suffix),
      '#policies':: { 'function': { help: |||
        List of Consul policies to associate with this role
      ||| } },
      policies(suffix=''):: refSelf.plain('.policies%s' % suffix),
      '#service_identities':: { 'function': { help: |||
        Set of Consul service identities to attach to
        				the token. Applicable for Vault 1.11+ with Consul 1.5+
      ||| } },
      service_identities(suffix=''):: refSelf.plain('.service_identities%s' % suffix),
      '#ttl':: { 'function': { help: |||
        Specifies the TTL for this role.
      ||| } },
      ttl(suffix=''):: refSelf.plain('.ttl%s' % suffix),
    },
  },
}
