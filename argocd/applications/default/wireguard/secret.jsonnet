local secret = import 'secret.libsonnet';

secret.externalSecretExtract('wg-config', 'default', 'wg-config')
