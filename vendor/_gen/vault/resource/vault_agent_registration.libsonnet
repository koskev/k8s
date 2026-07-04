{
  '#new':: { 'function': { help: |||
    Manages Agent Registry registrations in Vault Enterprise. The Agent Registry allows you to register agents with Vault and apply authorization ceilings to them.
  ||| } },
  local outerSelf = self,
  new(terraformName, display_name, entity_id):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_agent_registration+: {
        [terraformName]+: {
          display_name: display_name,
          entity_id: entity_id,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withCeilingPolicies':: { 'function': { help: |||
      List of policy identifiers that define the authorization ceiling for this agent. Cannot include 'root' policy. Note: Vault automatically adds default policies (['default', 'default-ceiling']) unless no_default_ceiling_policy is true, but these are filtered out when reading the state to match your configuration.
    ||| } },
    withCeilingPolicies(value):: self {
      resource+: {
        vault_agent_registration+: { [terraformName]+: { ceiling_policies: value } },
      },
    },
    '#withDescription':: { 'function': { help: |||
      Detailed description of the agent's purpose.
    ||| } },
    withDescription(value):: self {
      resource+: {
        vault_agent_registration+: { [terraformName]+: { description: value } },
      },
    },
    '#withDisplayName':: { 'function': { help: |||
      Human-readable name for the agent registration.
    ||| } },
    withDisplayName(value):: self {
      resource+: {
        vault_agent_registration+: { [terraformName]+: { display_name: value } },
      },
    },
    '#withEntityId':: { 'function': { help: |||
      Entity ID representing this agent. Each entity can only have one registration.
    ||| } },
    withEntityId(value):: self {
      resource+: {
        vault_agent_registration+: { [terraformName]+: { entity_id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_agent_registration+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withNoDefaultCeilingPolicy':: { 'function': { help: |||
      If true, opts out of automatically adding the default-ceiling policy to this agent registration.
    ||| } },
    withNoDefaultCeilingPolicy(value):: self {
      resource+: {
        vault_agent_registration+: { [terraformName]+: { no_default_ceiling_policy: value } },
      },
    },
    '#withOptionalAuthorizationDetails':: { 'function': { help: |||
      When false, RAR (Rich Authorization Requests) is mandatory and authorization_details must be present in the token. When set to true, authorization_details in the JWT token are optional for this agent. This setting works in conjunction with the OAuth Resource Server profile's optional_authorization_details setting - RAR is optional if EITHER is true. Defaults to false.
    ||| } },
    withOptionalAuthorizationDetails(value):: self {
      resource+: {
        vault_agent_registration+: { [terraformName]+: { optional_authorization_details: value } },
      },
    },
    '#withOwner':: { 'function': { help: |||
      Owner of the agent registration.
    ||| } },
    withOwner(value):: self {
      resource+: {
        vault_agent_registration+: { [terraformName]+: { owner: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_agent_registration.%s%s }' % [terraformName, suffix],
    fields:: {
      '#ceiling_policies':: { 'function': { help: |||
        List of policy identifiers that define the authorization ceiling for this agent. Cannot include 'root' policy. Note: Vault automatically adds default policies (['default', 'default-ceiling']) unless no_default_ceiling_policy is true, but these are filtered out when reading the state to match your configuration.
      ||| } },
      ceiling_policies(suffix=''):: refSelf.plain('.ceiling_policies%s' % suffix),
      '#creation_time':: { 'function': { help: |||
        Timestamp when the registration was created.
      ||| } },
      creation_time(suffix=''):: refSelf.plain('.creation_time%s' % suffix),
      '#description':: { 'function': { help: |||
        Detailed description of the agent's purpose.
      ||| } },
      description(suffix=''):: refSelf.plain('.description%s' % suffix),
      '#display_name':: { 'function': { help: |||
        Human-readable name for the agent registration.
      ||| } },
      display_name(suffix=''):: refSelf.plain('.display_name%s' % suffix),
      '#entity_id':: { 'function': { help: |||
        Entity ID representing this agent. Each entity can only have one registration.
      ||| } },
      entity_id(suffix=''):: refSelf.plain('.entity_id%s' % suffix),
      '#id':: { 'function': { help: |||
        Unique identifier for the agent registration.
      ||| } },
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#last_updated_time':: { 'function': { help: |||
        Timestamp when the registration was last updated.
      ||| } },
      last_updated_time(suffix=''):: refSelf.plain('.last_updated_time%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#no_default_ceiling_policy':: { 'function': { help: |||
        If true, opts out of automatically adding the default-ceiling policy to this agent registration.
      ||| } },
      no_default_ceiling_policy(suffix=''):: refSelf.plain('.no_default_ceiling_policy%s' % suffix),
      '#optional_authorization_details':: { 'function': { help: |||
        When false, RAR (Rich Authorization Requests) is mandatory and authorization_details must be present in the token. When set to true, authorization_details in the JWT token are optional for this agent. This setting works in conjunction with the OAuth Resource Server profile's optional_authorization_details setting - RAR is optional if EITHER is true. Defaults to false.
      ||| } },
      optional_authorization_details(suffix=''):: refSelf.plain('.optional_authorization_details%s' % suffix),
      '#owner':: { 'function': { help: |||
        Owner of the agent registration.
      ||| } },
      owner(suffix=''):: refSelf.plain('.owner%s' % suffix),
    },
  },
}
