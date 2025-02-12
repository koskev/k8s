local secret = import 'secret.libsonnet';

secret.externalSecretExtract('postgres-secret', 'default')
