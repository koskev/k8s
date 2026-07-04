{
  '#new':: { 'function': { help: |||
    Provides an ephemeral resource to write to a generic Vault endpoint and read response data.
  ||| } },
  local outerSelf = self,
  new(terraformName, data_json, path):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    ephemeral+: {
      vault_generic_endpoint+: {
        [terraformName]+: {
          data_json: data_json,
          path: path,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withDataJson':: { 'function': { help: |||
      JSON-encoded data to write.
    ||| } },
    withDataJson(value):: self {
      ephemeral+: {
        vault_generic_endpoint+: { [terraformName]+: { data_json: value } },
      },
    },
    '#withMountId':: { 'function': { help: |||
      Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
    ||| } },
    withMountId(value):: self {
      ephemeral+: {
        vault_generic_endpoint+: { [terraformName]+: { mount_id: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      ephemeral+: {
        vault_generic_endpoint+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPath':: { 'function': { help: |||
      Full path to the Vault endpoint that will be written
    ||| } },
    withPath(value):: self {
      ephemeral+: {
        vault_generic_endpoint+: { [terraformName]+: { path: value } },
      },
    },
    '#withPathWrapTtl':: { 'function': { help: |||
      The TTL for the wrapped response.
    ||| } },
    withPathWrapTtl(value):: self {
      ephemeral+: {
        vault_generic_endpoint+: { [terraformName]+: { path_wrap_ttl: value } },
      },
    },
    '#withWriteFields':: { 'function': { help: |||
      Top-level fields returned by the write operation to extract and expose via write_data/write_data_json
    ||| } },
    withWriteFields(value):: self {
      ephemeral+: {
        vault_generic_endpoint+: { [terraformName]+: { write_fields: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_generic_endpoint.%s%s }' % [terraformName, suffix],
    fields:: {
      '#data_json':: { 'function': { help: |||
        JSON-encoded data to write.
      ||| } },
      data_json(suffix=''):: refSelf.plain('.data_json%s' % suffix),
      '#mount_id':: { 'function': { help: |||
        Terraform ID of the mount resource. Used to defer the provisioning of the ephemeral resource till the apply stage.
      ||| } },
      mount_id(suffix=''):: refSelf.plain('.mount_id%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#path':: { 'function': { help: |||
        Full path to the Vault endpoint that will be written
      ||| } },
      path(suffix=''):: refSelf.plain('.path%s' % suffix),
      '#path_wrap_ttl':: { 'function': { help: |||
        The TTL for the wrapped response.
      ||| } },
      path_wrap_ttl(suffix=''):: refSelf.plain('.path_wrap_ttl%s' % suffix),
      '#write_data':: { 'function': { help: |||
        Map of strings returned by write operation
      ||| } },
      write_data(suffix=''):: refSelf.plain('.write_data%s' % suffix),
      '#write_data_json':: { 'function': { help: |||
        JSON data returned by write operation
      ||| } },
      write_data_json(suffix=''):: refSelf.plain('.write_data_json%s' % suffix),
      '#write_fields':: { 'function': { help: |||
        Top-level fields returned by the write operation to extract and expose via write_data/write_data_json
      ||| } },
      write_fields(suffix=''):: refSelf.plain('.write_fields%s' % suffix),
    },
  },
}
