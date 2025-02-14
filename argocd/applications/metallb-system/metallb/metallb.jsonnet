local argocd = import 'argocd.libsonnet';
local chart = (import 'images.libsonnet').helm.metallb;

local addressPool(name, addresses, autoAssign=true) =
  {
    apiVersion: 'metallb.io/v1beta1',
    kind: 'IPAddressPool',
    metadata: {
      name: name,
      namespace: 'metallb-system',
      annotations: {
        'argocd.argoproj.io/sync-wave': '2',
      },
    },
    spec: {
      addresses: addresses,
      autoAssign: autoAssign,
    },
  };

[
  addressPool(
    name='auto-pool',
    addresses=['192.168.10.100-192.168.10.254']
  ),
  addressPool(
    name='manual-pool',
    addresses=['192.168.10.2-192.168.10.99'],
    autoAssign=false,
  ),
  {
    apiVersion: 'metallb.io/v1beta1',
    kind: 'L2Advertisement',
    metadata: {
      name: 'example',
      namespace: 'metallb-system',
      annotations: {
        'argocd.argoproj.io/sync-wave': '2',
      },
    },
    spec: {
      ipAddressPools: [
        'auto-pool',
        'manual-pool',
      ],
    },
  },
  argocd.applicationHelm(
    name='metallb',
    targetnamespace='metallb-system',
    chart=chart,
    values={
      controller: {
        priorityClassName: 'system-cluster-critical',
        resources: {
          limits: {
            cpu: '100m',
            memory: '100Mi',
          },
        },
      },
      speaker: {
        priorityClassName: 'system-cluster-critical',
        resources: {
          limits: {
            cpu: '100m',
            memory: '200Mi',
          },
        },
      },
    }
  ),
]
