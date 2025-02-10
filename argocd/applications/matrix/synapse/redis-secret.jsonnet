local secret = import 'secret.libsonnet';

secret.externalSecretExtract('redis-secret', 'matrix', 'synapse-redis-secret')
