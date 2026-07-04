{
  '#new':: { 'function': { help: |||
    Marks an ACME challenge as fulfilled for a specific identifier in an order.
  ||| } },
  local outerSelf = self,
  new(terraformName, challenge_type, identifier, mount, order_id, role_name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_pki_external_ca_secret_backend_order_challenge_fulfilled+: {
        [terraformName]+: {
          challenge_type: challenge_type,
          identifier: identifier,
          mount: mount,
          order_id: order_id,
          role_name: role_name,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_challenge_fulfilled+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_challenge_fulfilled+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_challenge_fulfilled+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_challenge_fulfilled+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_challenge_fulfilled+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_challenge_fulfilled+: { [terraformName]+: { providers: value } },
      },
    },
    '#challenge_type':: { 'function': { help: |||
      The type of ACME challenge that was fulfilled. Valid values are `http-01`, `dns-01`, `tls-alpn-01`.
    ||| } },
    withChallengeType(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_challenge_fulfilled+: { [terraformName]+: { challenge_type: value } },
      },
    },
    '#identifier':: { 'function': { help: |||
      The identifier (domain name) for which the challenge was fulfilled.
    ||| } },
    withIdentifier(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_challenge_fulfilled+: { [terraformName]+: { identifier: value } },
      },
    },
    '#mount':: { 'function': { help: |||
      The path where the PKI External CA secret backend is mounted.
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_challenge_fulfilled+: { [terraformName]+: { mount: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_challenge_fulfilled+: { [terraformName]+: { namespace: value } },
      },
    },
    '#order_id':: { 'function': { help: |||
      The unique identifier for the ACME order.
    ||| } },
    withOrderId(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_challenge_fulfilled+: { [terraformName]+: { order_id: value } },
      },
    },
    '#role_name':: { 'function': { help: |||
      Name of the role associated with the order.
    ||| } },
    withRoleName(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order_challenge_fulfilled+: { [terraformName]+: { role_name: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_pki_external_ca_secret_backend_order_challenge_fulfilled.%s%s }' % [terraformName, suffix],
    fields:: {
      '#challenge_type':: { 'function': { help: |||
        The type of ACME challenge that was fulfilled. Valid values are `http-01`, `dns-01`, `tls-alpn-01`.
      ||| } },
      challenge_type(suffix=''):: refSelf.plain('.challenge_type%s' % suffix),
      '#identifier':: { 'function': { help: |||
        The identifier (domain name) for which the challenge was fulfilled.
      ||| } },
      identifier(suffix=''):: refSelf.plain('.identifier%s' % suffix),
      '#mount':: { 'function': { help: |||
        The path where the PKI External CA secret backend is mounted.
      ||| } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#order_id':: { 'function': { help: |||
        The unique identifier for the ACME order.
      ||| } },
      order_id(suffix=''):: refSelf.plain('.order_id%s' % suffix),
      '#role_name':: { 'function': { help: |||
        Name of the role associated with the order.
      ||| } },
      role_name(suffix=''):: refSelf.plain('.role_name%s' % suffix),
    },
  },
}
