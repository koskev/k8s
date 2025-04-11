local argocd = import 'argocd.libsonnet';
local chart = (import 'images.libsonnet').helm.external_postgres_operator;

[
  argocd.applicationHelm(
    name='postgres-operator',
    targetnamespace='postgres',
    chart=chart,
    values={
      existingSecret: 'cnpg-cluster-admin',
    },
  ),
]
