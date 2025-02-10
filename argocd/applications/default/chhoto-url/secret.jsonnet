local secret = import 'secret.libsonnet';

secret.externalSecretExtract(
  name='chhoto-secret',
  namespace='default',
  key='chhoto'
)
