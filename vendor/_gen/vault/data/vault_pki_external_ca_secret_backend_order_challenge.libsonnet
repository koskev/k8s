{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Retrieves ACME challenge details for a specific identifier in an order.
      |||,
  } },
  new(terraformName, challenge_type, identifier, mount, order_id, role_name):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    data+: {
      vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: {
        challenge_type: challenge_type,
        identifier: identifier,
        mount: mount,
        order_id: order_id,
        role_name: role_name,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { data+: {
      vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { data+: {
      vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { data+: {
      vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { data+: {
      vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { data+: {
      vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { data+: {
      vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { data+: {
      vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { [name]: value } },
    } },
    '#withChallengeType':: { 'function': {
      help:
        |||
          The type of ACME challenge to retrieve. Valid values are `http-01`, `dns-01`, `tls-alpn-01`.
        |||,
    } },
    withChallengeType(value):: self { data+: {
      vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { challenge_type: value } },
    } },
    '#withIdentifier':: { 'function': {
      help:
        |||
          The identifier (domain name) for which to retrieve the challenge.
        |||,
    } },
    withIdentifier(value):: self { data+: {
      vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { identifier: value } },
    } },
    '#withMount':: { 'function': {
      help:
        |||
          The path where the PKI External CA secret backend is mounted.
        |||,
    } },
    withMount(value):: self { data+: {
      vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { mount: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { data+: {
      vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { namespace: value } },
    } },
    '#withOrderId':: { 'function': {
      help:
        |||
          The unique identifier for the ACME order.
        |||,
    } },
    withOrderId(value):: self { data+: {
      vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { order_id: value } },
    } },
    '#withRoleName':: { 'function': {
      help:
        |||
          Name of the role associated with the order.
        |||,
    } },
    withRoleName(value):: self { data+: {
      vault_pki_external_ca_secret_backend_order_challenge+: { [terraformName]+: { role_name: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_pki_external_ca_secret_backend_order_challenge.%s%s }' % [terraformName, suffix],
    fields:: {
      '#challenge_type':: { 'function': {
        help:
          |||
            The type of ACME challenge to retrieve. Valid values are `http-01`, `dns-01`, `tls-alpn-01`.
          |||,
      } },
      challenge_type(suffix=''):: refSelf.plain('.challenge_type%s' % suffix),
      '#expires':: { 'function': {
        help:
          |||
            Expiry time for the challenge.
          |||,
      } },
      expires(suffix=''):: refSelf.plain('.expires%s' % suffix),
      '#id':: { 'function': {
        help:
          |||
            Unique identifier for this data source.
          |||,
      } },
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#identifier':: { 'function': {
        help:
          |||
            The identifier (domain name) for which to retrieve the challenge.
          |||,
      } },
      identifier(suffix=''):: refSelf.plain('.identifier%s' % suffix),
      '#key_authorization':: { 'function': {
        help:
          |||
            The key authorization string for the challenge.
          |||,
      } },
      key_authorization(suffix=''):: refSelf.plain('.key_authorization%s' % suffix),
      '#mount':: { 'function': {
        help:
          |||
            The path where the PKI External CA secret backend is mounted.
          |||,
      } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#order_id':: { 'function': {
        help:
          |||
            The unique identifier for the ACME order.
          |||,
      } },
      order_id(suffix=''):: refSelf.plain('.order_id%s' % suffix),
      '#role_name':: { 'function': {
        help:
          |||
            Name of the role associated with the order.
          |||,
      } },
      role_name(suffix=''):: refSelf.plain('.role_name%s' % suffix),
      '#status':: { 'function': {
        help:
          |||
            The current status of the challenge (e.g., pending, valid, invalid).
          |||,
      } },
      status(suffix=''):: refSelf.plain('.status%s' % suffix),
      '#token':: { 'function': {
        help:
          |||
            The challenge token provided by the ACME server.
          |||,
      } },
      token(suffix=''):: refSelf.plain('.token%s' % suffix),

    },

  },

}
