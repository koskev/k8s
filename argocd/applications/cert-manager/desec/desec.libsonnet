local k8s = import 'k8s.libsonnet';
local images = (import 'images.libsonnet');

local secretName = 'cert-domain-tls-key-kokev';

function(input=import 'defaultInput.libsonnet')
  local namespace = input.applications.cert_manager.config.namespace;
  if input.applications.cert_manager.desec.config.enabled then [
    k8s.builder.argocd.helm.new(
      name='desec-http',
      targetnamespace=input.applications.cert_manager.config.namespace,
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
    .withAutoSync(),
    k8s.secret.externalSecretExtract(
      secretName,
      namespace,
    ),
    // TODO: move me and add config options
    k8s.builder.definition.new('cert-manager.io/v1', 'ClusterIssuer', 'kokev-issuer', namespace).withSpec({
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
                  secretName: secretName,
                  secretKeyName: 'desec-token',
                },
              },
            },
          },
        ],
      },
    }),
    k8s.secret.externalSecretExtract(
      'private-issuer',
      'default',
      templateFrom=[
        {
          literal: std.toString({
            acme: {
              server: 'https://acme-v02.api.letsencrypt.org/directory',
              email: '{{ .email }}',
              privateKeySecretRef: {
                name: 'private-issuer-generated',
              },
              solvers: [{
                http01: {
                  ingress: {
                    ingressClassName: 'traefik-external',
                  },
                },
              }],
            },
          }),
          target: 'spec',
          valuesDecodingStrategy: 'None',
        },
      ],
      manifest={
        apiVersion: 'cert-manager.io/v1',
        kind: 'Issuer',
      }
    ),
  ] else []
