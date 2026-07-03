{
  new(terraformName, display_name, entity_id):: {
    _type:: 'tf',
    resource+: {
      vault_agent_registration+: { [terraformName]+: {
        display_name: display_name,
        entity_id: entity_id,
      } },
    },
    '#withCeilingPolicies': { 'function': { help: |||
      List of policy identifiers that define the authorization ceiling for this agent. Cannot include 'root' policy. Note: Vault automatically adds default policies (['default', 'default-ceiling']) unless no_default_ceiling_policy is true, but these are filtered out when reading the state to match your configuration. 
    ||| } },
    withCeilingPolicies(value):: self {
      resource+: {
        vault_agent_registration+: { [terraformName]+: { ceiling_policies: value } },
      },
    },
    '#withCreationTime': { 'function': { help: |||
      Timestamp when the registration was created. 
    ||| } },
    withCreationTime(value):: self {
      resource+: {
        vault_agent_registration+: { [terraformName]+: { creation_time: value } },
      },
    },
    '#withDescription': { 'function': { help: |||
      Detailed description of the agent's purpose. 
    ||| } },
    withDescription(value):: self {
      resource+: {
        vault_agent_registration+: { [terraformName]+: { description: value } },
      },
    },
    '#withDisplayName': { 'function': { help: |||
      Human-readable name for the agent registration. 
    ||| } },
    withDisplayName(value):: self {
      resource+: {
        vault_agent_registration+: { [terraformName]+: { display_name: value } },
      },
    },
    '#withEntityId': { 'function': { help: |||
      Entity ID representing this agent. Each entity can only have one registration. 
    ||| } },
    withEntityId(value):: self {
      resource+: {
        vault_agent_registration+: { [terraformName]+: { entity_id: value } },
      },
    },
    '#withId': { 'function': { help: |||
      Unique identifier for the agent registration. 
    ||| } },
    withId(value):: self {
      resource+: {
        vault_agent_registration+: { [terraformName]+: { id: value } },
      },
    },
    '#withLastUpdatedTime': { 'function': { help: |||
      Timestamp when the registration was last updated. 
    ||| } },
    withLastUpdatedTime(value):: self {
      resource+: {
        vault_agent_registration+: { [terraformName]+: { last_updated_time: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_agent_registration+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withNoDefaultCeilingPolicy': { 'function': { help: |||
      If true, opts out of automatically adding the default-ceiling policy to this agent registration. 
    ||| } },
    withNoDefaultCeilingPolicy(value):: self {
      resource+: {
        vault_agent_registration+: { [terraformName]+: { no_default_ceiling_policy: value } },
      },
    },
    '#withOptionalAuthorizationDetails': { 'function': { help: |||
      When false, RAR (Rich Authorization Requests) is mandatory and authorization_details must be present in the token. When set to true, authorization_details in the JWT token are optional for this agent. This setting works in conjunction with the OAuth Resource Server profile's optional_authorization_details setting - RAR is optional if EITHER is true. Defaults to false. 
    ||| } },
    withOptionalAuthorizationDetails(value):: self {
      resource+: {
        vault_agent_registration+: { [terraformName]+: { optional_authorization_details: value } },
      },
    },
    '#withOwner': { 'function': { help: |||
      Owner of the agent registration. 
    ||| } },
    withOwner(value):: self {
      resource+: {
        vault_agent_registration+: { [terraformName]+: { owner: value } },
      },
    },
  },
}
