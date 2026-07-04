{
  local outerSelf = self,
  new(terraformName, backend, issuer_ref):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    data+: {
      vault_pki_secret_backend_issuer+: {
        [terraformName]+: {
          backend: backend,
          issuer_ref: issuer_ref,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withBackend':: { 'function': { help: |||
      Full path where PKI backend is mounted.
    ||| } },
    withBackend(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { backend: value } },
      },
    },
    '#withDisableCriticalExtensionChecks':: { 'function': { help: |||
      This determines whether this issuer is able to issue certificates where the chain of trust (including the issued certificate) contain critical extensions not processed by Vault.
    ||| } },
    withDisableCriticalExtensionChecks(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { disable_critical_extension_checks: value } },
      },
    },
    '#withDisableNameChecks':: { 'function': { help: |||
      This determines whether this issuer is able to issue certificates where the chain of trust (including the final issued certificate) contains a link in which the subject of the issuing certificate does not match the named issuer of the certificate it signed.
    ||| } },
    withDisableNameChecks(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { disable_name_checks: value } },
      },
    },
    '#withDisableNameConstraintChecks':: { 'function': { help: |||
      This determines whether this issuer is able to issue certificates where the chain of trust (including the final issued certificate) violates the name constraints critical extension of one of the issuer certificates in the chain
    ||| } },
    withDisableNameConstraintChecks(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { disable_name_constraint_checks: value } },
      },
    },
    '#withDisablePathLengthChecks':: { 'function': { help: |||
      This determines whether this issuer is able to issue certificates where the chain of trust (including the final issued certificate) is longer than allowed by a certificate authority in that chain.
    ||| } },
    withDisablePathLengthChecks(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { disable_path_length_checks: value } },
      },
    },
    withId(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { id: value } },
      },
    },
    '#withIssuerRef':: { 'function': { help: |||
      Reference to an existing issuer.
    ||| } },
    withIssuerRef(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { issuer_ref: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      data+: {
        vault_pki_secret_backend_issuer+: { [terraformName]+: { namespace: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ data.vault_pki_secret_backend_issuer.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': { help: |||
        Full path where PKI backend is mounted.
      ||| } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#ca_chain':: { 'function': { help: |||
        The CA chain as a list of format specific certificates
      ||| } },
      ca_chain(suffix=''):: refSelf.plain('.ca_chain%s' % suffix),
      '#certificate':: { 'function': { help: |||
        The certificate.
      ||| } },
      certificate(suffix=''):: refSelf.plain('.certificate%s' % suffix),
      '#disable_critical_extension_checks':: { 'function': { help: |||
        This determines whether this issuer is able to issue certificates where the chain of trust (including the issued certificate) contain critical extensions not processed by Vault.
      ||| } },
      disable_critical_extension_checks(suffix=''):: refSelf.plain('.disable_critical_extension_checks%s' % suffix),
      '#disable_name_checks':: { 'function': { help: |||
        This determines whether this issuer is able to issue certificates where the chain of trust (including the final issued certificate) contains a link in which the subject of the issuing certificate does not match the named issuer of the certificate it signed.
      ||| } },
      disable_name_checks(suffix=''):: refSelf.plain('.disable_name_checks%s' % suffix),
      '#disable_name_constraint_checks':: { 'function': { help: |||
        This determines whether this issuer is able to issue certificates where the chain of trust (including the final issued certificate) violates the name constraints critical extension of one of the issuer certificates in the chain
      ||| } },
      disable_name_constraint_checks(suffix=''):: refSelf.plain('.disable_name_constraint_checks%s' % suffix),
      '#disable_path_length_checks':: { 'function': { help: |||
        This determines whether this issuer is able to issue certificates where the chain of trust (including the final issued certificate) is longer than allowed by a certificate authority in that chain.
      ||| } },
      disable_path_length_checks(suffix=''):: refSelf.plain('.disable_path_length_checks%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#issuer_id':: { 'function': { help: |||
        ID of the issuer.
      ||| } },
      issuer_id(suffix=''):: refSelf.plain('.issuer_id%s' % suffix),
      '#issuer_name':: { 'function': { help: |||
        Name of the issuer.
      ||| } },
      issuer_name(suffix=''):: refSelf.plain('.issuer_name%s' % suffix),
      '#issuer_ref':: { 'function': { help: |||
        Reference to an existing issuer.
      ||| } },
      issuer_ref(suffix=''):: refSelf.plain('.issuer_ref%s' % suffix),
      '#key_id':: { 'function': { help: |||
        ID of the key used by the issuer.
      ||| } },
      key_id(suffix=''):: refSelf.plain('.key_id%s' % suffix),
      '#leaf_not_after_behavior':: { 'function': { help: |||
        Behavior of a leaf's NotAfter field during issuance.
      ||| } },
      leaf_not_after_behavior(suffix=''):: refSelf.plain('.leaf_not_after_behavior%s' % suffix),
      '#manual_chain':: { 'function': { help: |||
        Chain of issuer references to build this issuer's computed CAChain field from, when non-empty
      ||| } },
      manual_chain(suffix=''):: refSelf.plain('.manual_chain%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#usage':: { 'function': { help: |||
        Allowed usages for this issuer.
      ||| } },
      usage(suffix=''):: refSelf.plain('.usage%s' % suffix),
    },
  },
}
