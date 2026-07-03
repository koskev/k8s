{
  new(terraformName, name):: {
    _type:: 'tf',
    resource+: {
      vault_audit_request_header+: { [terraformName]+: {
        name: name,
      } },
    },
    withName(value):: self {
      resource+: {
        vault_audit_request_header+: { [terraformName]+: { name: value } },
      },
    },
    withHmac(value):: self {
      resource+: {
        vault_audit_request_header+: { [terraformName]+: { hmac: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_audit_request_header+: { [terraformName]+: { namespace: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_audit_request_header+: { [terraformName]+: { id: value } },
      },
    },
  },
}
