function(input=import 'defaultInput.libsonnet')
  local k8s = import 'k8s.libsonnet';
  local images = import 'images.libsonnet';

  local name = 'kyverno';
  local namespace = 'kyverno';
  [
    k8s.builder.argocd.helm.new(name, namespace, images.helm.kyverno),
    {
      apiVersion: 'policies.kyverno.io/v1',
      kind: 'ValidatingPolicy',
      metadata: {
        name: 'require-image-pinned-by-digest',
        annotations: {
          'policies.kyverno.io/title': 'Require Image Pinned by Digest',
          'policies.kyverno.io/category': 'Best Practices',
          'policies.kyverno.io/severity': 'medium',
          'policies.kyverno.io/description': 'To ensure basic security all images should be pinned by their hash',
        },
      },
      spec: {
        failurePolicy: 'Ignore',
        validationActions: [
          'Audit',
        ],
        matchConstraints: {
          resourceRules: [
            {
              apiGroups: [
                '',
              ],
              apiVersions: [
                'v1',
              ],
              operations: [
                'CREATE',
                'UPDATE',
              ],
              resources: [
                'pods',
              ],
            },
          ],
        },
        validations: [
          {
            message: 'The image does not contain a pinned hash!',
            expression: |||
              object.spec.?containers.orValue([]).all(c, c.image.contains('@sha256:')) &&
              object.spec.?initContainers.orValue([]).all(c, c.image.contains('@sha256:')) &&
              object.spec.?ephemeralContainers.orValue([]).all(c, c.image.contains('@sha256:'))
            |||,
          },
        ],
      },
    },

  ]
