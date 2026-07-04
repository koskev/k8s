{
  local outerSelf = self,
  new(terraformName, message_base64, start_time, title):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      vault_config_ui_custom_message+: {
        [terraformName]+: {
          message_base64: message_base64,
          start_time: start_time,
          title: title,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { providers: value } },
      },
    },
    '#authenticated':: { 'function': { help: |||
      A flag indicating whether the custom message is displayed pre-login (false) or post-login (true)
    ||| } },
    withAuthenticated(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { authenticated: value } },
      },
    },
    '#end_time':: { 'function': { help: |||
      The ending time of the active period of the custom message. Can be omitted for non-expiring message
    ||| } },
    withEndTime(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { end_time: value } },
      },
    },
    '#message_base64':: { 'function': { help: |||
      The base64-encoded content of the custom message
    ||| } },
    withMessageBase64(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { message_base64: value } },
      },
    },
    '#namespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise)
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { namespace: value } },
      },
    },
    '#options':: { 'function': { help: |||
      A map containing additional options for the custom message
    ||| } },
    withOptions(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { options: value } },
      },
    },
    '#start_time':: { 'function': { help: |||
      The starting time of the active period of the custom message
    ||| } },
    withStartTime(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { start_time: value } },
      },
    },
    '#title':: { 'function': { help: |||
      The title of the custom message
    ||| } },
    withTitle(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { title: value } },
      },
    },
    '#type':: { 'function': { help: |||
      The display type of custom message. Allowed values are banner and modal
    ||| } },
    withType(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { type: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_config_ui_custom_message.%s%s }' % [terraformName, suffix],
    fields:: {
      '#authenticated':: { 'function': { help: |||
        A flag indicating whether the custom message is displayed pre-login (false) or post-login (true)
      ||| } },
      authenticated(suffix=''):: refSelf.plain('.authenticated%s' % suffix),
      '#end_time':: { 'function': { help: |||
        The ending time of the active period of the custom message. Can be omitted for non-expiring message
      ||| } },
      end_time(suffix=''):: refSelf.plain('.end_time%s' % suffix),
      '#id':: { 'function': { help: |||
        The unique ID for the custom message
      ||| } },
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#message_base64':: { 'function': { help: |||
        The base64-encoded content of the custom message
      ||| } },
      message_base64(suffix=''):: refSelf.plain('.message_base64%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise)
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#options':: { 'function': { help: |||
        A map containing additional options for the custom message
      ||| } },
      options(suffix=''):: refSelf.plain('.options%s' % suffix),
      '#start_time':: { 'function': { help: |||
        The starting time of the active period of the custom message
      ||| } },
      start_time(suffix=''):: refSelf.plain('.start_time%s' % suffix),
      '#title':: { 'function': { help: |||
        The title of the custom message
      ||| } },
      title(suffix=''):: refSelf.plain('.title%s' % suffix),
      '#type':: { 'function': { help: |||
        The display type of custom message. Allowed values are banner and modal
      ||| } },
      type(suffix=''):: refSelf.plain('.type%s' % suffix),
    },
  },
}
