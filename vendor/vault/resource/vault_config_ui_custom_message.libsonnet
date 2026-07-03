{
  new(terraformName, title, start_time, message_base64):: {
    _type:: 'tf',
    resource+: {
      vault_config_ui_custom_message+: { [terraformName]+: {
        title: title,
        start_time: start_time,
        message_base64: message_base64,
      } },
    },
    withId(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { id: value } },
      },
    },
    withOptions(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { options: value } },
      },
    },
    withTitle(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { title: value } },
      },
    },
    withEndTime(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { end_time: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { namespace: value } },
      },
    },
    withStartTime(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { start_time: value } },
      },
    },
    withType(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { type: value } },
      },
    },
    withMessageBase64(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { message_base64: value } },
      },
    },
    withAuthenticated(value):: self {
      resource+: {
        vault_config_ui_custom_message+: { [terraformName]+: { authenticated: value } },
      },
    },
  },
}
