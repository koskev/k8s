{
  local outerSelf = self,
  new(terraformName, backend, issuer_ref):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_pki_secret_backend_issuer+: { [terraformName]+: {
        backend: backend,
        issuer_ref: issuer_ref,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_pki_secret_backend_issuer+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_pki_secret_backend_issuer+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_pki_secret_backend_issuer+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_pki_secret_backend_issuer+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_pki_secret_backend_issuer+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_pki_secret_backend_issuer+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_pki_secret_backend_issuer+: { [terraformName]+: { [name]: value } },
    } },
    '#withBackend':: { 'function': {
      help:
        |||
          Full path where PKI backend is mounted.
        |||,
    } },
    withBackend(value):: self { resource+: {
      vault_pki_secret_backend_issuer+: { [terraformName]+: { backend: value } },
    } },
    '#withCrlDistributionPoints':: { 'function': {
      help:
        |||
          Specifies the URL values for the CRL Distribution Points field.
        |||,
    } },
    withCrlDistributionPoints(value):: self { resource+: {
      vault_pki_secret_backend_issuer+: { [terraformName]+: { crl_distribution_points: value } },
    } },
    '#withDisableCriticalExtensionChecks':: { 'function': {
      help:
        |||
          This determines whether this issuer is able to issue certificates where the chain of trust (including the issued certificate) contain critical extensions not processed by Vault.
        |||,
    } },
    withDisableCriticalExtensionChecks(value):: self { resource+: {
      vault_pki_secret_backend_issuer+: { [terraformName]+: { disable_critical_extension_checks: value } },
    } },
    '#withDisableNameChecks':: { 'function': {
      help:
        |||
          This determines whether this issuer is able to issue certificates where the chain of trust (including the final issued certificate) contains a link in which the subject of the issuing certificate does not match the named issuer of the certificate it signed.
        |||,
    } },
    withDisableNameChecks(value):: self { resource+: {
      vault_pki_secret_backend_issuer+: { [terraformName]+: { disable_name_checks: value } },
    } },
    '#withDisableNameConstraintChecks':: { 'function': {
      help:
        |||
          This determines whether this issuer is able to issue certificates where the chain of trust (including the final issued certificate) violates the name constraints critical extension of one of the issuer certificates in the chain.
        |||,
    } },
    withDisableNameConstraintChecks(value):: self { resource+: {
      vault_pki_secret_backend_issuer+: { [terraformName]+: { disable_name_constraint_checks: value } },
    } },
    '#withDisablePathLengthChecks':: { 'function': {
      help:
        |||
          This determines whether this issuer is able to issue certificates where the chain of trust (including the final issued certificate) is longer than allowed by a certificate authority in that chain.
        |||,
    } },
    withDisablePathLengthChecks(value):: self { resource+: {
      vault_pki_secret_backend_issuer+: { [terraformName]+: { disable_path_length_checks: value } },
    } },
    '#withEnableAiaUrlTemplating':: { 'function': {
      help:
        |||
          Specifies that the AIA URL values should be templated.
        |||,
    } },
    withEnableAiaUrlTemplating(value):: self { resource+: {
      vault_pki_secret_backend_issuer+: { [terraformName]+: { enable_aia_url_templating: value } },
    } },
    withId(value):: self { resource+: {
      vault_pki_secret_backend_issuer+: { [terraformName]+: { id: value } },
    } },
    '#withIssuerName':: { 'function': {
      help:
        |||
          Reference to an existing issuer.
        |||,
    } },
    withIssuerName(value):: self { resource+: {
      vault_pki_secret_backend_issuer+: { [terraformName]+: { issuer_name: value } },
    } },
    '#withIssuerRef':: { 'function': {
      help:
        |||
          Reference to an existing issuer.
        |||,
    } },
    withIssuerRef(value):: self { resource+: {
      vault_pki_secret_backend_issuer+: { [terraformName]+: { issuer_ref: value } },
    } },
    '#withIssuingCertificates':: { 'function': {
      help:
        |||
          Specifies the URL values for the Issuing Certificate field.
        |||,
    } },
    withIssuingCertificates(value):: self { resource+: {
      vault_pki_secret_backend_issuer+: { [terraformName]+: { issuing_certificates: value } },
    } },
    '#withLeafNotAfterBehavior':: { 'function': {
      help:
        |||
          Behavior of a leaf's 'NotAfter' field during issuance.
        |||,
    } },
    withLeafNotAfterBehavior(value):: self { resource+: {
      vault_pki_secret_backend_issuer+: { [terraformName]+: { leaf_not_after_behavior: value } },
    } },
    '#withManualChain':: { 'function': {
      help:
        |||
          Chain of issuer references to build this issuer's computed CAChain field from, when non-empty.
        |||,
    } },
    withManualChain(value):: self { resource+: {
      vault_pki_secret_backend_issuer+: { [terraformName]+: { manual_chain: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_pki_secret_backend_issuer+: { [terraformName]+: { namespace: value } },
    } },
    '#withOcspServers':: { 'function': {
      help:
        |||
          Specifies the URL values for the OCSP Servers field.
        |||,
    } },
    withOcspServers(value):: self { resource+: {
      vault_pki_secret_backend_issuer+: { [terraformName]+: { ocsp_servers: value } },
    } },
    '#withRevocationSignatureAlgorithm':: { 'function': {
      help:
        |||
          Which signature algorithm to use when building CRLs.
        |||,
    } },
    withRevocationSignatureAlgorithm(value):: self { resource+: {
      vault_pki_secret_backend_issuer+: { [terraformName]+: { revocation_signature_algorithm: value } },
    } },
    '#withUsage':: { 'function': {
      help:
        |||
          Comma-separated list of allowed usages for this issuer.
        |||,
    } },
    withUsage(value):: self { resource+: {
      vault_pki_secret_backend_issuer+: { [terraformName]+: { usage: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_pki_secret_backend_issuer.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': {
        help:
          |||
            Full path where PKI backend is mounted.
          |||,
      } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#crl_distribution_points':: { 'function': {
        help:
          |||
            Specifies the URL values for the CRL Distribution Points field.
          |||,
      } },
      crl_distribution_points(suffix=''):: refSelf.plain('.crl_distribution_points%s' % suffix),
      '#disable_critical_extension_checks':: { 'function': {
        help:
          |||
            This determines whether this issuer is able to issue certificates where the chain of trust (including the issued certificate) contain critical extensions not processed by Vault.
          |||,
      } },
      disable_critical_extension_checks(suffix=''):: refSelf.plain('.disable_critical_extension_checks%s' % suffix),
      '#disable_name_checks':: { 'function': {
        help:
          |||
            This determines whether this issuer is able to issue certificates where the chain of trust (including the final issued certificate) contains a link in which the subject of the issuing certificate does not match the named issuer of the certificate it signed.
          |||,
      } },
      disable_name_checks(suffix=''):: refSelf.plain('.disable_name_checks%s' % suffix),
      '#disable_name_constraint_checks':: { 'function': {
        help:
          |||
            This determines whether this issuer is able to issue certificates where the chain of trust (including the final issued certificate) violates the name constraints critical extension of one of the issuer certificates in the chain.
          |||,
      } },
      disable_name_constraint_checks(suffix=''):: refSelf.plain('.disable_name_constraint_checks%s' % suffix),
      '#disable_path_length_checks':: { 'function': {
        help:
          |||
            This determines whether this issuer is able to issue certificates where the chain of trust (including the final issued certificate) is longer than allowed by a certificate authority in that chain.
          |||,
      } },
      disable_path_length_checks(suffix=''):: refSelf.plain('.disable_path_length_checks%s' % suffix),
      '#enable_aia_url_templating':: { 'function': {
        help:
          |||
            Specifies that the AIA URL values should be templated.
          |||,
      } },
      enable_aia_url_templating(suffix=''):: refSelf.plain('.enable_aia_url_templating%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#issuer_id':: { 'function': {
        help:
          |||
            ID of the issuer.
          |||,
      } },
      issuer_id(suffix=''):: refSelf.plain('.issuer_id%s' % suffix),
      '#issuer_name':: { 'function': {
        help:
          |||
            Reference to an existing issuer.
          |||,
      } },
      issuer_name(suffix=''):: refSelf.plain('.issuer_name%s' % suffix),
      '#issuer_ref':: { 'function': {
        help:
          |||
            Reference to an existing issuer.
          |||,
      } },
      issuer_ref(suffix=''):: refSelf.plain('.issuer_ref%s' % suffix),
      '#issuing_certificates':: { 'function': {
        help:
          |||
            Specifies the URL values for the Issuing Certificate field.
          |||,
      } },
      issuing_certificates(suffix=''):: refSelf.plain('.issuing_certificates%s' % suffix),
      '#leaf_not_after_behavior':: { 'function': {
        help:
          |||
            Behavior of a leaf's 'NotAfter' field during issuance.
          |||,
      } },
      leaf_not_after_behavior(suffix=''):: refSelf.plain('.leaf_not_after_behavior%s' % suffix),
      '#manual_chain':: { 'function': {
        help:
          |||
            Chain of issuer references to build this issuer's computed CAChain field from, when non-empty.
          |||,
      } },
      manual_chain(suffix=''):: refSelf.plain('.manual_chain%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#ocsp_servers':: { 'function': {
        help:
          |||
            Specifies the URL values for the OCSP Servers field.
          |||,
      } },
      ocsp_servers(suffix=''):: refSelf.plain('.ocsp_servers%s' % suffix),
      '#revocation_signature_algorithm':: { 'function': {
        help:
          |||
            Which signature algorithm to use when building CRLs.
          |||,
      } },
      revocation_signature_algorithm(suffix=''):: refSelf.plain('.revocation_signature_algorithm%s' % suffix),
      '#usage':: { 'function': {
        help:
          |||
            Comma-separated list of allowed usages for this issuer.
          |||,
      } },
      usage(suffix=''):: refSelf.plain('.usage%s' % suffix),

    },

  },

}
