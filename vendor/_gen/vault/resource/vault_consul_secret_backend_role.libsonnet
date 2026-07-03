{
new(terraformName, name):: {
_type:: 'tf',
resource+: {
vault_consul_secret_backend_role+: { [terraformName]+: {
'name': name,
}}},
'#withBackend':: { 'function': { help: |||
 The path of the Consul Secret Backend the role belongs to. 
||| } },
withBackend(value):: self {
resource+: {
            vault_consul_secret_backend_role+: { [terraformName]+: { 'backend': value } },
        },
},
'#withConsulNamespace':: { 'function': { help: |||
 The Consul namespace that the token will be created in. Applicable for Vault 1.10+ and Consul 1.7+ 
||| } },
withConsulNamespace(value):: self {
resource+: {
            vault_consul_secret_backend_role+: { [terraformName]+: { 'consul_namespace': value } },
        },
},
'#withConsulPolicies':: { 'function': { help: |||
 List of Consul policies to associate with this role 
||| } },
withConsulPolicies(value):: self {
resource+: {
            vault_consul_secret_backend_role+: { [terraformName]+: { 'consul_policies': value } },
        },
},
'#withConsulRoles':: { 'function': { help: |||
 Set of Consul roles to attach to the token. Applicable for Vault 1.10+ with Consul 1.5+ 
||| } },
withConsulRoles(value):: self {
resource+: {
            vault_consul_secret_backend_role+: { [terraformName]+: { 'consul_roles': value } },
        },
},
withId(value):: self {
resource+: {
            vault_consul_secret_backend_role+: { [terraformName]+: { 'id': value } },
        },
},
'#withLocal':: { 'function': { help: |||
 Indicates that the token should not be replicated globally and instead be local to the current datacenter. 
||| } },
withLocal(value):: self {
resource+: {
            vault_consul_secret_backend_role+: { [terraformName]+: { 'local': value } },
        },
},
'#withMaxTtl':: { 'function': { help: |||
 Maximum TTL for leases associated with this role, in seconds. 
||| } },
withMaxTtl(value):: self {
resource+: {
            vault_consul_secret_backend_role+: { [terraformName]+: { 'max_ttl': value } },
        },
},
'#withName':: { 'function': { help: |||
 The name of an existing role against which to create this Consul credential 
||| } },
withName(value):: self {
resource+: {
            vault_consul_secret_backend_role+: { [terraformName]+: { 'name': value } },
        },
},
'#withNamespace':: { 'function': { help: |||
 Target namespace. (requires Enterprise) 
||| } },
withNamespace(value):: self {
resource+: {
            vault_consul_secret_backend_role+: { [terraformName]+: { 'namespace': value } },
        },
},
'#withNodeIdentities':: { 'function': { help: |||
 Set of Consul node identities to attach to
				the token. Applicable for Vault 1.11+ with Consul 1.8+ 
||| } },
withNodeIdentities(value):: self {
resource+: {
            vault_consul_secret_backend_role+: { [terraformName]+: { 'node_identities': value } },
        },
},
'#withPartition':: { 'function': { help: |||
 The Consul admin partition that the token will be created in. Applicable for Vault 1.10+ and Consul 1.11+ 
||| } },
withPartition(value):: self {
resource+: {
            vault_consul_secret_backend_role+: { [terraformName]+: { 'partition': value } },
        },
},
'#withPolicies':: { 'function': { help: |||
 List of Consul policies to associate with this role 
||| } },
withPolicies(value):: self {
resource+: {
            vault_consul_secret_backend_role+: { [terraformName]+: { 'policies': value } },
        },
},
'#withServiceIdentities':: { 'function': { help: |||
 Set of Consul service identities to attach to
				the token. Applicable for Vault 1.11+ with Consul 1.5+ 
||| } },
withServiceIdentities(value):: self {
resource+: {
            vault_consul_secret_backend_role+: { [terraformName]+: { 'service_identities': value } },
        },
},
'#withTtl':: { 'function': { help: |||
 Specifies the TTL for this role. 
||| } },
withTtl(value):: self {
resource+: {
            vault_consul_secret_backend_role+: { [terraformName]+: { 'ttl': value } },
        },
},
},
}