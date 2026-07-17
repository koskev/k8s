{
  local outerSelf = self,
  new(terraformName, backend, project, roleset):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_gcp_secret_roleset+: { [terraformName]+: {
        backend: backend,
        project: project,
        roleset: roleset,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_gcp_secret_roleset+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_gcp_secret_roleset+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_gcp_secret_roleset+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_gcp_secret_roleset+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_gcp_secret_roleset+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_gcp_secret_roleset+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_gcp_secret_roleset+: { [terraformName]+: { [name]: value } },
    } },
    '#withBackend':: { 'function': {
      help:
        |||
          Path where the GCP secrets engine is mounted.
        |||,
    } },
    withBackend(value):: self { resource+: {
      vault_gcp_secret_roleset+: { [terraformName]+: { backend: value } },
    } },
    withId(value):: self { resource+: {
      vault_gcp_secret_roleset+: { [terraformName]+: { id: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_gcp_secret_roleset+: { [terraformName]+: { namespace: value } },
    } },
    '#withProject':: { 'function': {
      help:
        |||
          Name of the GCP project that this roleset's service account will belong to.
        |||,
    } },
    withProject(value):: self { resource+: {
      vault_gcp_secret_roleset+: { [terraformName]+: { project: value } },
    } },
    '#withRoleset':: { 'function': {
      help:
        |||
          Name of the RoleSet to create
        |||,
    } },
    withRoleset(value):: self { resource+: {
      vault_gcp_secret_roleset+: { [terraformName]+: { roleset: value } },
    } },
    '#withSecretType':: { 'function': {
      help:
        |||
          Type of secret generated for this role set. Defaults to `access_token`. Accepted values: `access_token`, `service_account_key`
        |||,
    } },
    withSecretType(value):: self { resource+: {
      vault_gcp_secret_roleset+: { [terraformName]+: { secret_type: value } },
    } },
    '#withTokenScopes':: { 'function': {
      help:
        |||
          List of OAuth scopes to assign to `access_token` secrets generated under this role set (`access_token` role sets only) 
        |||,
    } },
    withTokenScopes(value):: self { resource+: {
      vault_gcp_secret_roleset+: { [terraformName]+: { token_scopes: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_gcp_secret_roleset.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': {
        help:
          |||
            Path where the GCP secrets engine is mounted.
          |||,
      } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#project':: { 'function': {
        help:
          |||
            Name of the GCP project that this roleset's service account will belong to.
          |||,
      } },
      project(suffix=''):: refSelf.plain('.project%s' % suffix),
      '#roleset':: { 'function': {
        help:
          |||
            Name of the RoleSet to create
          |||,
      } },
      roleset(suffix=''):: refSelf.plain('.roleset%s' % suffix),
      '#secret_type':: { 'function': {
        help:
          |||
            Type of secret generated for this role set. Defaults to `access_token`. Accepted values: `access_token`, `service_account_key`
          |||,
      } },
      secret_type(suffix=''):: refSelf.plain('.secret_type%s' % suffix),
      '#service_account_email':: { 'function': {
        help:
          |||
            Email of the service account created by Vault for this Roleset
          |||,
      } },
      service_account_email(suffix=''):: refSelf.plain('.service_account_email%s' % suffix),
      '#token_scopes':: { 'function': {
        help:
          |||
            List of OAuth scopes to assign to `access_token` secrets generated under this role set (`access_token` role sets only) 
          |||,
      } },
      token_scopes(suffix=''):: refSelf.plain('.token_scopes%s' % suffix),

    },

  },

}
