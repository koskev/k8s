{
  new(terraformName, message_base64, start_time, title):: {
    _type:: 'tf',
    resource+: {
      vault_config_ui_custom_message+: { [terraformName]+: {
        message_base64: message_base64,
        start_time: start_time,
        title: title,
      } },
    },
    '#withAuthenticated':: { 'function': { help: |||
      A flag indicating whether the custom message is displayed pre-login (false) or post-login (true) 
    ||| } },
    withAuthenticated(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { authenticated: value } },
      },
    },
    '#withEndTime':: { 'function': { help: |||
      The ending time of the active period of the custom message. Can be omitted for non-expiring message 
    ||| } },
    withEndTime(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { end_time: value } },
      },
    },
    '#withId':: { 'function': { help: |||
      The unique ID for the custom message 
    ||| } },
    withId(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { id: value } },
      },
    },
    '#withMessageBase64':: { 'function': { help: |||
      The base64-encoded content of the custom message 
    ||| } },
    withMessageBase64(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { message_base64: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withOptions':: { 'function': { help: |||
      A map containing additional options for the custom message 
    ||| } },
    withOptions(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { options: value } },
      },
    },
    '#withStartTime':: { 'function': { help: |||
      The starting time of the active period of the custom message 
    ||| } },
    withStartTime(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { start_time: value } },
      },
    },
    '#withTitle':: { 'function': { help: |||
      The title of the custom message 
    ||| } },
    withTitle(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { title: value } },
      },
    },
    '#withType':: { 'function': { help: |||
      The display type of custom message. Allowed values are banner and modal 
    ||| } },
    withType(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { type: value } },
      },
    },
  },
}
