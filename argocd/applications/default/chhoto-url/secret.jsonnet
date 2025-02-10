local secret = import 'secret.libsonnet';

secret.externalSecretExtract(
  name='chhoto',
  namespace='default',
  key='chhoto'
)
