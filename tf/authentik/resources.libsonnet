local tf = import 'tf/tf.libsonnet';

[
  tf.data('authentik_certificate_key_pair', 'generated', { name: 'authentik Self-signed Certificate' }),
  tf.data('authentik_flow', 'default-authorization-flow', { slug: 'default-provider-authorization-implicit-consent' }),
  tf.data('authentik_flow', 'default-invalidation-flow', { slug: 'default-provider-invalidation-flow' }),
  tf.data('authentik_group', 'admins', { name: 'authentik Admins' }),
  tf.sops('argocd_secret', '../openbao/openbao_secrets/argocd-secret.enc.yaml'),
  tf.sops('oidc_secret', '../openbao/openbao_secrets/oidc.enc.yaml'),
]
+
[
  tf.data('authentik_property_mapping_provider_scope', x, { managed: 'goauthentik.io/providers/oauth2/scope-%s' % x })

  for x in ['email', 'openid', 'profile']
]
+
[
  tf.provider('authentik', { url: 'https://auth.kokev.de' }),
  tf.provider('sops', {}),
]
+
tf.authentik.addApplication(
  'argocd',
  redirect_uris=[
    'https://argocd.kokev.de/api/dex/callback',
    'https://localhost:8085/auth/callback',
  ],
  secret_ref='${data.sops_file.argocd_secret.data["dex.authentik.clientSecret"]}',
)
+
tf.authentik.addApplication('openbao', redirect_uris=[
  'https://vault.kokev.de/ui/vault/auth/oidc/oidc/callback',
  'https://vault.kokev.de/oidc/callback',
  'http://localhost:8250/oidc/callback',
])
+
[
  tf.resource('authentik_group', 'argocd_admin', { name: 'ArgoCD Admins' }),

  tf.resource('authentik_user', 'kevin', {
    groups: [
      '${authentik_group.argocd_admin.id}',
      '${data.authentik_group.admins.id}',
    ],
    name: 'kevin',
    username: 'kevin',
  }),
]
+
[
  {
    terraform: [
      {
        backend: {
          kubernetes: [
            {
              config_path: '~/.kube/config',
              secret_suffix: 'authentik-state',
            },
          ],
        },
        required_providers: [
          {
            authentik: {
              source: 'goauthentik/authentik',
              version: '2026.2.0',
            },
            sops: {
              source: 'carlpett/sops',
              version: '~> 1.0',
            },
          },
        ],
        required_version: '>= 1.10.0',
      },
    ],
  },
]
