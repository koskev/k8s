local k8s = import 'k8s.libsonnet';
local chart = (import 'images.libsonnet').helm.netbird;


local name = 'netbird';
local namespace = 'netbird';

[
  k8s.v1.secret('netbird-relay-secret', namespace, { 'netbird-relay-secret-key': 'abc' }),
  k8s.builder.argocd.helm.new(name, namespace, chart).withValues({
    management: {
      persistentVolume: {
        enabled: false,
      },
    },
    signal: {
      persistentVolume: {
        enabled: false,
      },
    },

  }),
]
