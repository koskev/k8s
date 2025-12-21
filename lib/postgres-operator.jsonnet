local argocd = import 'argocd.libsonnet';
local chart = (import 'images.libsonnet').helm.external_postgres_operator;

{
  new(name, secret_name, instance_name=name):: argocd.applicationHelm(
    name=name,
    targetnamespace='postgres',
    chart=chart,
    values={
      existingSecret: secret_name,
      env: {
        POSTGRES_INSTANCE: instance_name,
      },
    },
  ),
}
