function(input=import 'defaultInput.libsonnet')
  local config = input.applications.openbao.secrets.config;
  [
    config.mount,
    config.openbao_secrets,
    config.secrets,
  ]
