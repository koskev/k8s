{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Provides an ephemeral resource to log in to Vault using the CloudFoundry (CF) auth method.
      |||,
  } },
  new(terraformName, cf_instance_cert, role, signature, signing_time):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    ephemeral+: {
      vault_cf_auth_login+: { [terraformName]+: {
        cf_instance_cert: cf_instance_cert,
        role: role,
        signature: signature,
        signing_time: signing_time,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { ephemeral+: {
      vault_cf_auth_login+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { ephemeral+: {
      vault_cf_auth_login+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { ephemeral+: {
      vault_cf_auth_login+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { ephemeral+: {
      vault_cf_auth_login+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { ephemeral+: {
      vault_cf_auth_login+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { ephemeral+: {
      vault_cf_auth_login+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { ephemeral+: {
      vault_cf_auth_login+: { [terraformName]+: { [name]: value } },
    } },
    '#withCfInstanceCert':: { 'function': {
      help:
        |||
          The full body of the file available at the path denoted by `CF_INSTANCE_CERT`.
        |||,
    } },
    withCfInstanceCert(value):: self { ephemeral+: {
      vault_cf_auth_login+: { [terraformName]+: { cf_instance_cert: value } },
    } },
    '#withMount':: { 'function': {
      help:
        |||
          Mount path for the CF auth engine in Vault.
        |||,
    } },
    withMount(value):: self { ephemeral+: {
      vault_cf_auth_login+: { [terraformName]+: { mount: value } },
    } },
    '#withMountId':: { 'function': {
      help:
        |||
          Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
        |||,
    } },
    withMountId(value):: self { ephemeral+: {
      vault_cf_auth_login+: { [terraformName]+: { mount_id: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { ephemeral+: {
      vault_cf_auth_login+: { [terraformName]+: { namespace: value } },
    } },
    '#withRole':: { 'function': {
      help:
        |||
          Name of the CF auth role to log in with.
        |||,
    } },
    withRole(value):: self { ephemeral+: {
      vault_cf_auth_login+: { [terraformName]+: { role: value } },
    } },
    '#withSignature':: { 'function': {
      help:
        |||
          The RSA-PSS/SHA256 signature generated using `CF_INSTANCE_KEY` over the concatenation of signing_time, cf_instance_cert, and role.
        |||,
    } },
    withSignature(value):: self { ephemeral+: {
      vault_cf_auth_login+: { [terraformName]+: { signature: value } },
    } },
    '#withSigningTime':: { 'function': {
      help:
        |||
          The date and time used to construct the signature (e.g. `2006-01-02T15:04:05Z`).
        |||,
    } },
    withSigningTime(value):: self { ephemeral+: {
      vault_cf_auth_login+: { [terraformName]+: { signing_time: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_cf_auth_login.%s%s }' % [terraformName, suffix],
    fields:: {
      '#accessor':: { 'function': {
        help:
          |||
            The accessor for the client token.
          |||,
      } },
      accessor(suffix=''):: refSelf.plain('.accessor%s' % suffix),
      '#cf_instance_cert':: { 'function': {
        help:
          |||
            The full body of the file available at the path denoted by `CF_INSTANCE_CERT`.
          |||,
      } },
      cf_instance_cert(suffix=''):: refSelf.plain('.cf_instance_cert%s' % suffix),
      '#client_token':: { 'function': {
        help:
          |||
            The Vault client token issued after a successful login.
          |||,
      } },
      client_token(suffix=''):: refSelf.plain('.client_token%s' % suffix),
      '#lease_duration':: { 'function': {
        help:
          |||
            The lease duration of the client token in seconds.
          |||,
      } },
      lease_duration(suffix=''):: refSelf.plain('.lease_duration%s' % suffix),
      '#mount':: { 'function': {
        help:
          |||
            Mount path for the CF auth engine in Vault.
          |||,
      } },
      mount(suffix=''):: refSelf.plain('.mount%s' % suffix),
      '#mount_id':: { 'function': {
        help:
          |||
            Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
          |||,
      } },
      mount_id(suffix=''):: refSelf.plain('.mount_id%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#policies':: { 'function': {
        help:
          |||
            The list of policies attached to the client token.
          |||,
      } },
      policies(suffix=''):: refSelf.plain('.policies%s' % suffix),
      '#renewable':: { 'function': {
        help:
          |||
            Whether the client token is renewable.
          |||,
      } },
      renewable(suffix=''):: refSelf.plain('.renewable%s' % suffix),
      '#role':: { 'function': {
        help:
          |||
            Name of the CF auth role to log in with.
          |||,
      } },
      role(suffix=''):: refSelf.plain('.role%s' % suffix),
      '#signature':: { 'function': {
        help:
          |||
            The RSA-PSS/SHA256 signature generated using `CF_INSTANCE_KEY` over the concatenation of signing_time, cf_instance_cert, and role.
          |||,
      } },
      signature(suffix=''):: refSelf.plain('.signature%s' % suffix),
      '#signing_time':: { 'function': {
        help:
          |||
            The date and time used to construct the signature (e.g. `2006-01-02T15:04:05Z`).
          |||,
      } },
      signing_time(suffix=''):: refSelf.plain('.signing_time%s' % suffix),

    },

  },

}
