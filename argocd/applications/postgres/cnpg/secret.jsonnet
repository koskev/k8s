local secret = import 'secret.libsonnet';

secret.externalSecretExtract(
  name='cluster-admin-secret',
  namespace='postgres',
  key='cnpg-cluster-admin',
  labels={
    'cnpg.io/reload': 'true',
  },
)
