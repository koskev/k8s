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
  {
    apiVersion: 'cert-manager.io/v1',
    kind: 'ClusterIssuer',
    metadata: {
      name: 'kokev-issuer',
      namespace: 'cert-manager',
    },
    spec: {
      acme: {
        email: 'letsencrypt@kokev.de',
        server: 'https://acme-v02.api.letsencrypt.org/directory',
        privateKeySecretRef: {
          name: 'cert-manager-desec-http-secret',
        },
        solvers: [
          {
            dns01: {
              webhook: {
                groupName: 'kokev.de',
                solverName: 'desec-http',
                config: {
                  apiUrl: 'https://desec.io/api/v1',
                  domainName: 'kokev.de',
                  secretName: 'cert-domain-tls-key-kokev.de',
                  secretKeyName: 'desec-token',
                },
              },
            },
          },
        ],
      },
    },
  },
]
