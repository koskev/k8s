local argocd = import 'argocd.libsonnet';
local images = (import 'images.libsonnet');
local k8s = import 'k8s.libsonnet';

local name = 'cert-manager';
local namespace = 'cert-manager';
local secretName = 'cert-domain-tls-key-kokev';

[
  argocd.applicationHelm(
    name=name,
    targetnamespace=namespace,
    chart=images.helm.cert_manager,
    releaseName=name,
    values={
      installCRDs: true,
      namespace: namespace,
    },
  ),
  k8s.builder.argocd.helm.new(
    name='desec-http',
    targetnamespace=namespace,
    chart=images.helm.cert_manager_desec_http,
  ).withValues({
    groupName: 'kokev.de',
    secretName: [
      secretName,
    ],
    image: {
      repository: images.container.desec_http.image,
      tag: images.container.desec_http.tag,
    },
  })
  .withServerSideApply()
  .withAutoSync()
  ,
  k8s.secret.externalSecretExtract(
    secretName,
    namespace,
  ),
]
