{
  new(terraformName, key, name):: {
    _type:: 'tf',
    resource+: {
      vault_identity_oidc_role+: { [terraformName]+: {
        key: key,
        name: name,
      } },
    },
    '#withClientId':: { 'function': { help: |||
      The value that will be included in the `aud` field of all the OIDC identity tokens issued by this role 
    ||| } },
    withClientId(value):: self {
      resource+: {
        vault_identity_oidc_role+: { [terraformName]+: { client_id: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_oidc_role+: { [terraformName]+: { id: value } },
      },
    },
    '#withKey':: { 'function': { help: |||
      A configured named key, the key must already exist. 
    ||| } },
    withKey(value):: self {
      resource+: {
        vault_identity_oidc_role+: { [terraformName]+: { key: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the role. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_identity_oidc_role+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_oidc_role+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withTemplate':: { 'function': { help: |||
      The template string to use for generating tokens. This may be in string-ified JSON or base64 format. 
    ||| } },
    withTemplate(value):: self {
      resource+: {
        vault_identity_oidc_role+: { [terraformName]+: { template: value } },
      },
    },
    '#withTtl':: { 'function': { help: |||
      TTL of the tokens generated against the role in number of seconds. 
    ||| } },
    withTtl(value):: self {
      resource+: {
        vault_identity_oidc_role+: { [terraformName]+: { ttl: value } },
      },
    },
  },
}
