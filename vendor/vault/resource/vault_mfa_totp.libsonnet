{
  new(terraformName, issuer, name):: {
    _type:: 'tf',
    resource+: {
      vault_mfa_totp+: { [terraformName]+: {
        issuer: issuer,
        name: name,
      } },
    },
    withId(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { id: value } },
      },
    },
    withIssuer(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { issuer: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { namespace: value } },
      },
    },
    withSkew(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { skew: value } },
      },
    },
    withPeriod(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { period: value } },
      },
    },
    withAlgorithm(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { algorithm: value } },
      },
    },
    withMaxValidationAttempts(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { max_validation_attempts: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { name: value } },
      },
    },
    withQrSize(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { qr_size: value } },
      },
    },
    withDigits(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { digits: value } },
      },
    },
    withKeySize(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { key_size: value } },
      },
    },
  },
}
