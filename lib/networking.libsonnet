{
  ingress(name, namespace, host, servicePort, serviceName=name, issuer='kokev-issuer', ingressClass='nginx'):: {
    apiVersion: 'networking.k8s.io/v1',
    kind: 'Ingress',
    metadata: {
      name: name,
      namespace: namespace,
      annotations: {
      } + if issuer == null then {} else {
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
    } + if issuer == null then {} else {
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
