local secret = import 'secret.libsonnet';

secret.externalSecretExtract('influxdb-secret', 'monitoring')
