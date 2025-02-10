local secret = import 'secret.libsonnet';

secret.externalSecretExtract(
  name='pihole-secret',
  namespace='default',
  key='pihole-secret'
)
