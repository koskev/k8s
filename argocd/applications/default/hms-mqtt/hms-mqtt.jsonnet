local argocd = import 'argocd.libsonnet';
local chart = (import 'images.libsonnet').helm.hms;
local secret = import 'secret.libsonnet';

local secretName = 'hms-mqtt-secret';

[
  secret.externalSecretExtract(secretName, 'default'),
  argocd.applicationHelm(
    name='hms-bridge',
    targetnamespace='default',
    chart=chart,
    values={
      existingSecret: secretName,
    },
  ),
]
