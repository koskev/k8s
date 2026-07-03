{
  new(terraformName, name):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_audit_request_header+: {
        [terraformName]+: {
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
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
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_audit_request_header.%s%s }' % [terraformName, suffix],
    fields:: {
      '#hmac':: { 'function': { help: |||
        Whether this header's value should be HMAC'd in the audit logs. 
      ||| } },
      hmac(suffix=''):: refSelf.plain('.hmac%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#name':: { 'function': { help: |||
        The name of the request header to audit. 
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
    },
  },
}
