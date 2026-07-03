{
  new(terraformName, name):: {
    _type:: 'tf',
    resource+: {
      vault_audit_request_header+: { [terraformName]+: {
        name: name,
      } },
    },
    '#withHmac':: { 'function': { help: |||
      Whether this header's value should be HMAC'd in the audit logs. 
    ||| } },
    withHmac(value):: self {
      resource+: {
        vault_audit_request_header+: { [terraformName]+: { hmac: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_audit_request_header+: { [terraformName]+: { id: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      The name of the request header to audit. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_audit_request_header+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_audit_request_header+: { [terraformName]+: { namespace: value } },
      },
    },
  },
}
