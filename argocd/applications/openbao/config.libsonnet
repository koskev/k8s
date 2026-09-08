function(input=import 'defaultInput.libsonnet')
  {
    namespace: 'openbao',
    unsealWithSecret: false,
    affinity: null,
    discoveryUrl: 'https://auth.%s' % input.globals.config.domain,
  }
