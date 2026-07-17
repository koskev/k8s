{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Polls the order status endpoint until the order is completed, then fetches the certificate.
      |||,
  } },
  new(terraformName, mount, order_id, role_name):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_pki_external_ca_secret_backend_order_certificate+: { [terraformName]+: {
        mount: mount,
        order_id: order_id,
        role_name: role_name,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_pki_external_ca_secret_backend_order_certificate+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_pki_external_ca_secret_backend_order_certificate+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_pki_external_ca_secret_backend_order_certificate+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_pki_external_ca_secret_backend_order_certificate+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_pki_external_ca_secret_backend_order_certificate+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_pki_external_ca_secret_backend_order_certificate+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_pki_external_ca_secret_backend_order_certificate+: { [terraformName]+: { [name]: value } },
    } },
    '#withMount':: { 'function': {
      help:
        |||
          The path where the PKI External CA secret backend is mounted.
        |||,
    } },
    withMount(value):: self { resource+: {
      vault_pki_external_ca_secret_backend_order_certificate+: { [terraformName]+: { mount: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_pki_external_ca_secret_backend_order_certificate+: { [terraformName]+: { namespace: value } },
    } },
    '#withOrderId':: { 'function': {
      help:
        |||
          The unique identifier for the ACME order.
        |||,
    } },
    withOrderId(value):: self { resource+: {
      vault_pki_external_ca_secret_backend_order_certificate+: { [terraformName]+: { order_id: value } },
    } },
    '#withRoleName':: { 'function': {
      help:
        |||
          Name of the role associated with the order.
        |||,
    } },
    withRoleName(value):: self { resource+: {
      vault_pki_external_ca_secret_backend_order_certificate+: { [terraformName]+: { role_name: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_pki_external_ca_secret_backend_order_certificate.%s%s }' % [terraformName, suffix],
    fields:: {
      '#ca_chain':: { 'function': {
        help:
          |||
            The PEM-encoded certificate chain.
          |||,
      } },
      ca_chain(suffix=''):: refSelf.plain('.ca_chain%s' % suffix),
      '#certificate':: { 'function': {
        help:
          |||
            The PEM-encoded certificate.
          |||,
      } },
      certificate(suffix=''):: refSelf.plain('.certificate%s' % suffix),
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
      '#private_key':: { 'function': {
        help:
          |||
            The PEM-encoded private key.
          |||,
      } },
      private_key(suffix=''):: refSelf.plain('.private_key%s' % suffix),
      '#role_name':: { 'function': {
        help:
          |||
            Name of the role associated with the order.
          |||,
      } },
      role_name(suffix=''):: refSelf.plain('.role_name%s' % suffix),
      '#serial_number':: { 'function': {
        help:
          |||
            The serial number of the issued certificate.
          |||,
      } },
      serial_number(suffix=''):: refSelf.plain('.serial_number%s' % suffix),

    },

  },

}
