{
  new(terraformName, issuer, name):: {
    _type:: 'tf',
    resource+: {
      vault_mfa_totp+: { [terraformName]+: {
        issuer: issuer,
        name: name,
      } },
    },
    '#withAlgorithm':: { 'function': { help: |||
      Specifies the hashing algorithm used to generate the TOTP code. Options include 'SHA1', 'SHA256' and 'SHA512'. 
    ||| } },
    withAlgorithm(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { algorithm: value } },
      },
    },
    '#withDigits':: { 'function': { help: |||
      The number of digits in the generated TOTP token. This value can either be 6 or 8. 
    ||| } },
    withDigits(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { digits: value } },
      },
    },
    '#withId':: { 'function': { help: |||
      ID computed by Vault. 
    ||| } },
    withId(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { id: value } },
      },
    },
    '#withIssuer':: { 'function': { help: |||
      The name of the key's issuing organization. 
    ||| } },
    withIssuer(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { issuer: value } },
      },
    },
    '#withKeySize':: { 'function': { help: |||
      Specifies the size in bytes of the generated key. 
    ||| } },
    withKeySize(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { key_size: value } },
      },
    },
    '#withMaxValidationAttempts':: { 'function': { help: |||
      The maximum number of consecutive failed validation attempts allowed. Must be a positive integer. Vault defaults this value to 5 if not provided or if set to 0. 
    ||| } },
    withMaxValidationAttempts(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { max_validation_attempts: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the MFA method. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPeriod':: { 'function': { help: |||
      The length of time used to generate a counter for the TOTP token calculation. 
    ||| } },
    withPeriod(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { period: value } },
      },
    },
    '#withQrSize':: { 'function': { help: |||
      The pixel size of the generated square QR code. 
    ||| } },
    withQrSize(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { qr_size: value } },
      },
    },
    '#withSkew':: { 'function': { help: |||
      The number of delay periods that are allowed when validating a TOTP token. This value can either be 0 or 1. 
    ||| } },
    withSkew(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { skew: value } },
      },
    },
  },
}
