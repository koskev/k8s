{
  local outerSelf = self,
  new(terraformName):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    resource+: {
      vault_aws_auth_backend_config_identity+: { [terraformName]+: {
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { resource+: {
      vault_aws_auth_backend_config_identity+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { resource+: {
      vault_aws_auth_backend_config_identity+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { resource+: {
      vault_aws_auth_backend_config_identity+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { resource+: {
      vault_aws_auth_backend_config_identity+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { resource+: {
      vault_aws_auth_backend_config_identity+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { resource+: {
      vault_aws_auth_backend_config_identity+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { resource+: {
      vault_aws_auth_backend_config_identity+: { [terraformName]+: { [name]: value } },
    } },
    '#withBackend':: { 'function': {
      help:
        |||
          Unique name of the auth backend to configure.
        |||,
    } },
    withBackend(value):: self { resource+: {
      vault_aws_auth_backend_config_identity+: { [terraformName]+: { backend: value } },
    } },
    '#withEc2Alias':: { 'function': {
      help:
        |||
          Configures how to generate the identity alias when using the ec2 auth method.
        |||,
    } },
    withEc2Alias(value):: self { resource+: {
      vault_aws_auth_backend_config_identity+: { [terraformName]+: { ec2_alias: value } },
    } },
    '#withEc2Metadata':: { 'function': {
      help:
        |||
          The metadata to include on the token returned by the login endpoint.
        |||,
    } },
    withEc2Metadata(value):: self { resource+: {
      vault_aws_auth_backend_config_identity+: { [terraformName]+: { ec2_metadata: value } },
    } },
    '#withIamAlias':: { 'function': {
      help:
        |||
          How to generate the identity alias when using the iam auth method.
        |||,
    } },
    withIamAlias(value):: self { resource+: {
      vault_aws_auth_backend_config_identity+: { [terraformName]+: { iam_alias: value } },
    } },
    '#withIamMetadata':: { 'function': {
      help:
        |||
          The metadata to include on the token returned by the login endpoint.
        |||,
    } },
    withIamMetadata(value):: self { resource+: {
      vault_aws_auth_backend_config_identity+: { [terraformName]+: { iam_metadata: value } },
    } },
    withId(value):: self { resource+: {
      vault_aws_auth_backend_config_identity+: { [terraformName]+: { id: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { resource+: {
      vault_aws_auth_backend_config_identity+: { [terraformName]+: { namespace: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_aws_auth_backend_config_identity.%s%s }' % [terraformName, suffix],
    fields:: {
      '#backend':: { 'function': {
        help:
          |||
            Unique name of the auth backend to configure.
          |||,
      } },
      backend(suffix=''):: refSelf.plain('.backend%s' % suffix),
      '#ec2_alias':: { 'function': {
        help:
          |||
            Configures how to generate the identity alias when using the ec2 auth method.
          |||,
      } },
      ec2_alias(suffix=''):: refSelf.plain('.ec2_alias%s' % suffix),
      '#ec2_metadata':: { 'function': {
        help:
          |||
            The metadata to include on the token returned by the login endpoint.
          |||,
      } },
      ec2_metadata(suffix=''):: refSelf.plain('.ec2_metadata%s' % suffix),
      '#iam_alias':: { 'function': {
        help:
          |||
            How to generate the identity alias when using the iam auth method.
          |||,
      } },
      iam_alias(suffix=''):: refSelf.plain('.iam_alias%s' % suffix),
      '#iam_metadata':: { 'function': {
        help:
          |||
            The metadata to include on the token returned by the login endpoint.
          |||,
      } },
      iam_metadata(suffix=''):: refSelf.plain('.iam_metadata%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),

    },

  },

}
