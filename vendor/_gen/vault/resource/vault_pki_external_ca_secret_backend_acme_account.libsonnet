{
  '#new':: { 'function': { help: |||
    Manage PKI ACME accounts for external CA integration.
  ||| } },
  local outerSelf = self,
  new(terraformName, directory_url, email_contacts, mount, name):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_pki_external_ca_secret_backend_acme_account+: {
        [terraformName]+: {
          directory_url: directory_url,
          email_contacts: email_contacts,
          mount: mount,
          name: name,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withDirectoryUrl':: { 'function': { help: |||
      ACME Directory URL.
    ||| } },
    withDirectoryUrl(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: { directory_url: value } },
      },
    },
    '#withEabKey':: { 'function': { help: |||
      An url base64 encoded external binding token to create the initial account.
    ||| } },
    withEabKey(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: { eab_key: value } },
      },
    },
    '#withEabKid':: { 'function': { help: |||
      The external binding key ID to create the initial account.
    ||| } },
    withEabKid(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: { eab_kid: value } },
      },
    },
    '#withEmailContacts':: { 'function': { help: |||
      Email addresses for the ACME account.
    ||| } },
    withEmailContacts(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: { email_contacts: value } },
      },
    },
    '#withKeyType':: { 'function': { help: |||
      Key type to generate for the account key. Valid values are `ec-256`, `ec-384`, `ec-521`, `rsa-2048`, `rsa-4096`, `rsa-8192`.
    ||| } },
    withKeyType(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: { key_type: value } },
      },
    },
    '#withMount':: { 'function': { help: |||
      The path where the PKI secret backend is mounted.
    ||| } },
    withMount(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: { mount: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the ACME account.
    ||| } },
    withName(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withTrustedCa':: { 'function': { help: |||
      Trusted CA certificates for the ACME server.
    ||| } },
    withTrustedCa(value):: self {
      resource+: {
        vault_pki_external_ca_secret_backend_acme_account+: { [terraformName]+: { trusted_ca: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_pki_external_ca_secret_backend_acme_account.%s%s }' % [terraformName, suffix],
    fields:: {
      '#active_key_version':: { 'function': { help: |||
        Version of account key, starts at zero
      ||| } },
      active_key_version(suffix=''):: refSelf.plain('.active_key_version%s' % suffix),
      '#directory_url':: { 'function': { help: |||
        ACME Directory URL.
      ||| } },
      directory_url(suffix=''):: refSelf.plain('.directory_url%s' % suffix),
      '#eab_key':: { 'function': { help: |||
        An url base64 encoded external binding token to create the initial account.
      ||| } },
      eab_key(suffix=''):: refSelf.plain('.eab_key%s' % suffix),
      '#eab_kid':: { 'function': { help: |||
        The external binding key ID to create the initial account.
      ||| } },
      eab_kid(suffix=''):: refSelf.plain('.eab_kid%s' % suffix),
      '#email_contacts':: { 'function': { help: |||
        Email addresses for the ACME account.
      ||| } },
      email_contacts(suffix=''):: refSelf.plain('.email_contacts%s' % suffix),
      '#key_type':: { 'function': { help: |||
        Key type to generate for the account key. Valid values are `ec-256`, `ec-384`, `ec-521`, `rsa-2048`, `rsa-4096`, `rsa-8192`.
      ||| } },
      key_type(suffix=''):: refSelf.plain('.key_type%s' % suffix),
      '#mount':: { 'function': { help: |||
        The path where the PKI secret backend is mounted.
      ||| } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#name':: { 'function': { help: |||
        Name of the ACME account.
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#trusted_ca':: { 'function': { help: |||
        Trusted CA certificates for the ACME server.
      ||| } },
      trusted_ca(suffix=''):: refSelf.plain('.trusted_ca%s' % suffix),
    },
  },
}
