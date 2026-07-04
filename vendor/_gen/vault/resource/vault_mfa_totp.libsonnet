{
  local outerSelf = self,
  new(terraformName, issuer, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_mfa_totp+: {
        [terraformName]+: {
          issuer: issuer,
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { providers: value } },
      },
    },
    '#algorithm':: { 'function': { help: |||
      Specifies the hashing algorithm used to generate the TOTP code. Options include 'SHA1', 'SHA256' and 'SHA512'.
    ||| } },
    withAlgorithm(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { algorithm: value } },
      },
    },
    '#digits':: { 'function': { help: |||
      The number of digits in the generated TOTP token. This value can either be 6 or 8.
    ||| } },
    withDigits(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { digits: value } },
      },
    },
    '#id':: { 'function': { help: |||
      ID computed by Vault.
    ||| } },
    withId(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { id: value } },
      },
    },
    '#issuer':: { 'function': { help: |||
      The name of the key's issuing organization.
    ||| } },
    withIssuer(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { issuer: value } },
      },
    },
    '#key_size':: { 'function': { help: |||
      Specifies the size in bytes of the generated key.
    ||| } },
    withKeySize(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { key_size: value } },
      },
    },
    '#max_validation_attempts':: { 'function': { help: |||
      The maximum number of consecutive failed validation attempts allowed. Must be a positive integer. Vault defaults this value to 5 if not provided or if set to 0.
    ||| } },
    withMaxValidationAttempts(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { max_validation_attempts: value } },
      },
    },
    '#name':: { 'function': { help: |||
      Name of the MFA method.
    ||| } },
    withName(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { name: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { namespace: value } },
      },
    },
    '#period':: { 'function': { help: |||
      The length of time used to generate a counter for the TOTP token calculation.
    ||| } },
    withPeriod(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { period: value } },
      },
    },
    '#qr_size':: { 'function': { help: |||
      The pixel size of the generated square QR code.
    ||| } },
    withQrSize(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { qr_size: value } },
      },
    },
    '#skew':: { 'function': { help: |||
      The number of delay periods that are allowed when validating a TOTP token. This value can either be 0 or 1.
    ||| } },
    withSkew(value):: self {
      resource+: {
        vault_mfa_totp+: { [terraformName]+: { skew: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_mfa_totp.%s%s }' % [terraformName, suffix],
    fields:: {
      '#algorithm':: { 'function': { help: |||
        Specifies the hashing algorithm used to generate the TOTP code. Options include 'SHA1', 'SHA256' and 'SHA512'.
      ||| } },
      algorithm(suffix=''):: refSelf.plain('.algorithm%s' % suffix),
      '#digits':: { 'function': { help: |||
        The number of digits in the generated TOTP token. This value can either be 6 or 8.
      ||| } },
      digits(suffix=''):: refSelf.plain('.digits%s' % suffix),
      '#id':: { 'function': { help: |||
        ID computed by Vault.
      ||| } },
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#issuer':: { 'function': { help: |||
        The name of the key's issuing organization.
      ||| } },
      issuer(suffix=''):: refSelf.plain('.issuer%s' % suffix),
      '#key_size':: { 'function': { help: |||
        Specifies the size in bytes of the generated key.
      ||| } },
      key_size(suffix=''):: refSelf.plain('.key_size%s' % suffix),
      '#max_validation_attempts':: { 'function': { help: |||
        The maximum number of consecutive failed validation attempts allowed. Must be a positive integer. Vault defaults this value to 5 if not provided or if set to 0.
      ||| } },
      max_validation_attempts(suffix=''):: refSelf.plain('.max_validation_attempts%s' % suffix),
      '#name':: { 'function': { help: |||
        Name of the MFA method.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#period':: { 'function': { help: |||
        The length of time used to generate a counter for the TOTP token calculation.
      ||| } },
      period(suffix=''):: refSelf.plain('.period%s' % suffix),
      '#qr_size':: { 'function': { help: |||
        The pixel size of the generated square QR code.
      ||| } },
      qr_size(suffix=''):: refSelf.plain('.qr_size%s' % suffix),
      '#skew':: { 'function': { help: |||
        The number of delay periods that are allowed when validating a TOTP token. This value can either be 0 or 1.
      ||| } },
      skew(suffix=''):: refSelf.plain('.skew%s' % suffix),
    },
  },
}
