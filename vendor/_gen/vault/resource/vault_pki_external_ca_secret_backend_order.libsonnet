{
  new(terraformName, mount, role_name):: {
    _type:: 'tf',
    resource+: {
      vault_pki_external_ca_secret_backend_order+: { [terraformName]+: {
        mount: mount,
        role_name: role_name,
      } },
    },
    '#withChallenges': { 'function': { help: |||
      Map of identifiers to their ACME challenges. 
    ||| } },
    withChallenges(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { challenges: value } },
      },
    },
    '#withCreationDate': { 'function': { help: |||
      The date and time the order was created in RFC3339 format. 
    ||| } },
    withCreationDate(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { creation_date: value } },
      },
    },
    '#withCsr': { 'function': { help: |||
      PEM-encoded Certificate Signing Request containing identifiers. Required if `identifiers` is not provided. Mutually exclusive with `identifiers`. 
    ||| } },
    withCsr(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { csr: value } },
      },
    },
    '#withExpires': { 'function': { help: |||
      The expiration date of the order in RFC3339 format. 
    ||| } },
    withExpires(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { expires: value } },
      },
    },
    '#withIdentifiers': { 'function': { help: |||
      List of identifiers (domain names) for the certificate order. Required if `csr` is not provided. Mutually exclusive with `csr`. 
    ||| } },
    withIdentifiers(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { identifiers: value } },
      },
    },
    '#withLastError': { 'function': { help: |||
      The last error message encountered during order processing. 
    ||| } },
    withLastError(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { last_error: value } },
      },
    },
    '#withLastUpdate': { 'function': { help: |||
      The date and time the order was last updated in RFC3339 format. 
    ||| } },
    withLastUpdate(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { last_update: value } },
      },
    },
    '#withMount': { 'function': { help: |||
      The path where the PKI External CA secret backend is mounted. 
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { mount: value } },
      },
    },
    '#withNamespace': { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withNextWorkDate': { 'function': { help: |||
      The next scheduled work date for this order in RFC3339 format. 
    ||| } },
    withNextWorkDate(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { next_work_date: value } },
      },
    },
    '#withOrderId': { 'function': { help: |||
      The unique identifier for this ACME order. 
    ||| } },
    withOrderId(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { order_id: value } },
      },
    },
    '#withOrderStatus': { 'function': { help: |||
      Current status of the order (e.g., new, submitted, completed, error). 
    ||| } },
    withOrderStatus(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { order_status: value } },
      },
    },
    '#withRoleName': { 'function': { help: |||
      Name of the role to create the order for. 
    ||| } },
    withRoleName(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { role_name: value } },
      },
    },
    '#withSerialNumber': { 'function': { help: |||
      The serial number of the issued certificate (available when order is completed). 
    ||| } },
    withSerialNumber(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { serial_number: value } },
      },
    },
  },
}
