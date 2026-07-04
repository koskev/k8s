{
  '#new':: { 'function': { help: |||
    Creates and manages ACME orders for certificate issuance via PKI External CA roles.
  ||| } },
  local outerSelf = self,
  new(terraformName, mount, role_name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_pki_external_ca_secret_backend_order+: {
        [terraformName]+: {
          mount: mount,
          role_name: role_name,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { providers: value } },
      },
    },
    '#csr':: { 'function': { help: |||
      PEM-encoded Certificate Signing Request containing identifiers. Required if `identifiers` is not provided. Mutually exclusive with `identifiers`.
    ||| } },
    withCsr(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { csr: value } },
      },
    },
    '#identifiers':: { 'function': { help: |||
      List of identifiers (domain names) for the certificate order. Required if `csr` is not provided. Mutually exclusive with `csr`.
    ||| } },
    withIdentifiers(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { identifiers: value } },
      },
    },
    '#mount':: { 'function': { help: |||
      The path where the PKI External CA secret backend is mounted.
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { mount: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { namespace: value } },
      },
    },
    '#role_name':: { 'function': { help: |||
      Name of the role to create the order for.
    ||| } },
    withRoleName(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { role_name: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_pki_external_ca_secret_backend_order.%s%s }' % [terraformName, suffix],
    fields:: {
      '#challenges':: { 'function': { help: |||
        Map of identifiers to their ACME challenges.
      ||| } },
      challenges(suffix=''):: refSelf.plain('.challenges%s' % suffix),
      '#creation_date':: { 'function': { help: |||
        The date and time the order was created in RFC3339 format.
      ||| } },
      creation_date(suffix=''):: refSelf.plain('.creation_date%s' % suffix),
      '#csr':: { 'function': { help: |||
        PEM-encoded Certificate Signing Request containing identifiers. Required if `identifiers` is not provided. Mutually exclusive with `identifiers`.
      ||| } },
      csr(suffix=''):: refSelf.plain('.csr%s' % suffix),
      '#expires':: { 'function': { help: |||
        The expiration date of the order in RFC3339 format.
      ||| } },
      expires(suffix=''):: refSelf.plain('.expires%s' % suffix),
      '#identifiers':: { 'function': { help: |||
        List of identifiers (domain names) for the certificate order. Required if `csr` is not provided. Mutually exclusive with `csr`.
      ||| } },
      identifiers(suffix=''):: refSelf.plain('.identifiers%s' % suffix),
      '#last_error':: { 'function': { help: |||
        The last error message encountered during order processing.
      ||| } },
      last_error(suffix=''):: refSelf.plain('.last_error%s' % suffix),
      '#last_update':: { 'function': { help: |||
        The date and time the order was last updated in RFC3339 format.
      ||| } },
      last_update(suffix=''):: refSelf.plain('.last_update%s' % suffix),
      '#mount':: { 'function': { help: |||
        The path where the PKI External CA secret backend is mounted.
      ||| } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#next_work_date':: { 'function': { help: |||
        The next scheduled work date for this order in RFC3339 format.
      ||| } },
      next_work_date(suffix=''):: refSelf.plain('.next_work_date%s' % suffix),
      '#order_id':: { 'function': { help: |||
        The unique identifier for this ACME order.
      ||| } },
      order_id(suffix=''):: refSelf.plain('.order_id%s' % suffix),
      '#order_status':: { 'function': { help: |||
        Current status of the order (e.g., new, submitted, completed, error).
      ||| } },
      order_status(suffix=''):: refSelf.plain('.order_status%s' % suffix),
      '#role_name':: { 'function': { help: |||
        Name of the role to create the order for.
      ||| } },
      role_name(suffix=''):: refSelf.plain('.role_name%s' % suffix),
      '#serial_number':: { 'function': { help: |||
        The serial number of the issued certificate (available when order is completed).
      ||| } },
      serial_number(suffix=''):: refSelf.plain('.serial_number%s' % suffix),
    },
  },
}
