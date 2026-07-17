{
  local outerSelf = self,
  '#new':: { 'function': {
    help:
      |||
        Provides an ephemeral resource to read a KVV2 Secret from Vault.
      |||,
  } },
  new(terraformName, mount, name):: self.functions(terraformName) + {
    _type:: 'tf',
    ref():: outerSelf.ref(terraformName),
    ephemeral+: {
      vault_kv_secret_v2+: { [terraformName]+: {
        mount: mount,
        name: name,
      } },
    },
  }
  ,
  functions(terraformName):: {
    withForEach(value):: self { ephemeral+: {
      vault_kv_secret_v2+: { [terraformName]+: { for_each: value } },
    } },
    withDependsOn(value):: self { ephemeral+: {
      vault_kv_secret_v2+: { [terraformName]+: { depends_on: value } },
    } },
    withCount(value):: self { ephemeral+: {
      vault_kv_secret_v2+: { [terraformName]+: { count: value } },
    } },
    withLifecycle(value):: self { ephemeral+: {
      vault_kv_secret_v2+: { [terraformName]+: { lifecycle: value } },
    } },
    withProvider(value):: self { ephemeral+: {
      vault_kv_secret_v2+: { [terraformName]+: { provider: value } },
    } },
    withProviders(value):: self { ephemeral+: {
      vault_kv_secret_v2+: { [terraformName]+: { providers: value } },
    } },
    addCustomData(name, value):: self { ephemeral+: {
      vault_kv_secret_v2+: { [terraformName]+: { [name]: value } },
    } },
    '#withMount':: { 'function': {
      help:
        |||
          Mount path for the KVV2 engine in Vault.
        |||,
    } },
    withMount(value):: self { ephemeral+: {
      vault_kv_secret_v2+: { [terraformName]+: { mount: value } },
    } },
    '#withMountId':: { 'function': {
      help:
        |||
          Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
        |||,
    } },
    withMountId(value):: self { ephemeral+: {
      vault_kv_secret_v2+: { [terraformName]+: { mount_id: value } },
    } },
    '#withName':: { 'function': {
      help:
        |||
          Full name of the secret.
        |||,
    } },
    withName(value):: self { ephemeral+: {
      vault_kv_secret_v2+: { [terraformName]+: { name: value } },
    } },
    '#withNamespace':: { 'function': {
      help:
        |||
          Target namespace. (requires Enterprise)
        |||,
    } },
    withNamespace(value):: self { ephemeral+: {
      vault_kv_secret_v2+: { [terraformName]+: { namespace: value } },
    } },
    '#withVersion':: { 'function': {
      help:
        |||
          Version of the secret to retrieve.
        |||,
    } },
    withVersion(value):: self { ephemeral+: {
      vault_kv_secret_v2+: { [terraformName]+: { version: value } },
    } },

  }
  ,
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_kv_secret_v2.%s%s }' % [terraformName, suffix],
    fields:: {
      '#created_time':: { 'function': {
        help:
          |||
            Time at which the secret was created.
          |||,
      } },
      created_time(suffix=''):: refSelf.plain('.created_time%s' % suffix),
      '#custom_metadata':: { 'function': {
        help:
          |||
            Custom metadata for the secret.
          |||,
      } },
      custom_metadata(suffix=''):: refSelf.plain('.custom_metadata%s' % suffix),
      '#data':: { 'function': {
        help:
          |||
            Map of strings read from Vault.
          |||,
      } },
      data(suffix=''):: refSelf.plain('.data%s' % suffix),
      '#data_json':: { 'function': {
        help:
          |||
            JSON-encoded secret data read from Vault.
          |||,
      } },
      data_json(suffix=''):: refSelf.plain('.data_json%s' % suffix),
      '#deletion_time':: { 'function': {
        help:
          |||
            Deletion time for the secret.
          |||,
      } },
      deletion_time(suffix=''):: refSelf.plain('.deletion_time%s' % suffix),
      '#destroyed':: { 'function': {
        help:
          |||
            Indicates whether the secret has been destroyed.
          |||,
      } },
      destroyed(suffix=''):: refSelf.plain('.destroyed%s' % suffix),
      '#mount':: { 'function': {
        help:
          |||
            Mount path for the KVV2 engine in Vault.
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
      '#name':: { 'function': {
        help:
          |||
            Full name of the secret.
          |||,
      } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': {
        help:
          |||
            Target namespace. (requires Enterprise)
          |||,
      } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#version':: { 'function': {
        help:
          |||
            Version of the secret to retrieve.
          |||,
      } },
      version(suffix=''):: refSelf.plain('.version%s' % suffix),

    },

  },

}
