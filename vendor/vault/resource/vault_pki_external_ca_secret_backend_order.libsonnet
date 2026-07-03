{
  new(terraformName, role_name, mount):: {
    _type:: 'tf',
    resource+: {
      vault_pki_external_ca_secret_backend_order+: { [terraformName]+: {
        role_name: role_name,
        mount: mount,
      } },
    },
    withIdentifiers(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { identifiers: value } },
      },
    },
    withNextWorkDate(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { next_work_date: value } },
      },
    },
    withRoleName(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { role_name: value } },
      },
    },
    withCsr(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { csr: value } },
      },
    },
    withChallenges(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { challenges: value } },
      },
    },
    withMount(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { mount: value } },
      },
    },
    withOrderId(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { order_id: value } },
      },
    },
    withOrderStatus(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { order_status: value } },
      },
    },
    withSerialNumber(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { serial_number: value } },
      },
    },
    withCreationDate(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { creation_date: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { namespace: value } },
      },
    },
    withExpires(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { expires: value } },
      },
    },
    withLastUpdate(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { last_update: value } },
      },
    },
    withLastError(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_order+: { [terraformName]+: { last_error: value } },
      },
    },
  },
}
