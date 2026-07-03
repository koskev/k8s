{
  new(terraformName, issuer):: {
    _type:: 'tf',
    resource+: {
      vault_identity_mfa_totp+: { [terraformName]+: {
        issuer: issuer,
      } },
    },
    withKeySize(value):: self {
      resource+: {
        vault_identity_mfa_totp+: { [terraformName]+: { key_size: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_identity_mfa_totp+: { [terraformName]+: { name: value } },
      },
    },
    withSkew(value):: self {
      resource+: {
        vault_identity_mfa_totp+: { [terraformName]+: { skew: value } },
      },
    },
    withNamespaceId(value):: self {
      resource+: {
        vault_identity_mfa_totp+: { [terraformName]+: { namespace_id: value } },
      },
    },
    withQrSize(value):: self {
      resource+: {
        vault_identity_mfa_totp+: { [terraformName]+: { qr_size: value } },
      },
    },
    withUuid(value):: self {
      resource+: {
        vault_identity_mfa_totp+: { [terraformName]+: { uuid: value } },
      },
    },
    withMaxValidationAttempts(value):: self {
      resource+: {
        vault_identity_mfa_totp+: { [terraformName]+: { max_validation_attempts: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_identity_mfa_totp+: { [terraformName]+: { namespace: value } },
      },
    },
    withMountAccessor(value):: self {
      resource+: {
        vault_identity_mfa_totp+: { [terraformName]+: { mount_accessor: value } },
      },
    },
    withType(value):: self {
      resource+: {
        vault_identity_mfa_totp+: { [terraformName]+: { type: value } },
      },
    },
    withMethodId(value):: self {
      resource+: {
        vault_identity_mfa_totp+: { [terraformName]+: { method_id: value } },
      },
    },
    withDigits(value):: self {
      resource+: {
        vault_identity_mfa_totp+: { [terraformName]+: { digits: value } },
      },
    },
    withAlgorithm(value):: self {
      resource+: {
        vault_identity_mfa_totp+: { [terraformName]+: { algorithm: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_identity_mfa_totp+: { [terraformName]+: { id: value } },
      },
    },
    withIssuer(value):: self {
      resource+: {
        vault_identity_mfa_totp+: { [terraformName]+: { issuer: value } },
      },
    },
    withNamespacePath(value):: self {
      resource+: {
        vault_identity_mfa_totp+: { [terraformName]+: { namespace_path: value } },
      },
    },
    withPeriod(value):: self {
      resource+: {
        vault_identity_mfa_totp+: { [terraformName]+: { period: value } },
      },
    },
  },
}
