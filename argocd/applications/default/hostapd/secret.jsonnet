local secret = import 'secret.libsonnet';

secret.externalSecretExtract('hostapd-secret', 'default')
