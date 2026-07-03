{
  new(terraformName, name):: {
    _type:: 'tf',
    resource+: {
      vault_identity_oidc_key+: { [terraformName]+: {
        name: name,
      } },
    },
    '#withAlgorithm': { 'function': { help: |||
      Signing algorithm to use. Signing algorithm to use. Allowed values are: RS256 (default), RS384, RS512, ES256, ES384, ES512, EdDSA. 
    ||| } },
    withAlgorithm(value):: self {
      resource+: {
        vault_identity_oidc_key+: { [terraformName]+: { algorithm: value } },
      },
    },
    '#withAllowedClientIds': { 'function': { help: |||
      Array of role client ids allowed to use this key for signing. If empty, no roles are allowed. If "*", all roles are allowed. 
    ||| } },
    withAllowedClientIds(value):: self {
      resource+: {
        vault_identity_oidc_key+: { [terraformName]+: { allowed_client_ids: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_oidc_key+: { [terraformName]+: { id: value } },
      },
    },
    '#withName': { 'function': { help: |||
      Name of the key. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_identity_oidc_key+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_identity_oidc_key+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withRotationPeriod': { 'function': { help: |||
      How often to generate a new signing key in number of seconds 
    ||| } },
    withRotationPeriod(value):: self {
      resource+: {
        vault_identity_oidc_key+: { [terraformName]+: { rotation_period: value } },
      },
    },
    '#withVerificationTtl': { 'function': { help: |||
      Controls how long the public portion of a signing key will be available for verification after being rotated in seconds. 
    ||| } },
    withVerificationTtl(value):: self {
      resource+: {
        vault_identity_oidc_key+: { [terraformName]+: { verification_ttl: value } },
      },
    },
  },
}
