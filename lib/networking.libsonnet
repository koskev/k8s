{
  ingress(name, namespace, host, serviceName, servicePort, issuer='kokev-issuer', ingressClass='nginx'):: {
    apiVersion: 'networking.k8s.io/v1',
    kind: 'Ingress',
    metadata: {
      name: name,
      namespace: namespace,
      annotations: {
        'cert-manager.io/cluster-issuer': issuer,
      },
    },
    spec: {
      ingressClassName: ingressClass,
      rules: [
        {
          host: host,
          http: {
            paths: [
              {
                pathType: 'Prefix',
                backend: {
                  service: {
                    name: serviceName,
                    port: {
                      number: servicePort,
                    },
                  },
                },
                path: '/',
              },
            ],
          },
        },
      ],
      tls: [
        {
          hosts: [
            host,
          ],
          secretName: '%s-tls' % name,
        },
      ],
    },
  },
}
