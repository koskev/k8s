function(input=import 'defaultInput.libsonnet')
  local k8s = import 'k8s.libsonnet';
  local images = import 'images.libsonnet';

  local name = 'kyverno';
  local namespace = 'kyverno';

  local host = '%s.%s' % [name, input.globals.config.domain];

  [
    k8s.builder.argocd.helm.new(name, namespace, images.helm.kyverno),
    k8s.builder.argocd.helm.new('%s-policy' % name, namespace, images.helm.kyvero_ui)
    .withValues({
      ui: {
        enabled: true,
        ingress: {
          enabled: true,
          className: input.globals.config.ingress.internal.name,
          hosts: [{
            host: host,
            paths: [{
              path: '/',
              pathType: 'Prefix',
            }],
          }],
          tls: [{
            secretName: '%s-tls' % name,
            hosts: [host],
          }],
          annotations: {
            'cert-manager.io/cluster-issuer': input.globals.config.default_issuer,
          },
        },
      },
    })
    ,
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
    {
      apiVersion: 'policies.kyverno.io/v1',
      kind: 'ValidatingPolicy',
      metadata: {
        name: 'allow-specific-images',
        annotations: {
          'policies.kyverno.io/title': 'Block unknown images',
          'policies.kyverno.io/category': 'Best Practices',
          'policies.kyverno.io/severity': 'High',
        },
      },
      spec: {
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
        variables: [
          {
            name: 'allowed_list',
            expression: std.toString(std.map(function(image) '%s:%s' % [image.image, image.tag], std.objectValues(images.container))),
          },
          {
            name: 'all_containers',
            expression: |||
              object.spec.?containers.orValue([]) +
              object.spec.?initContainers.orValue([]) +
              object.spec.?ephemeralContainers.orValue([])
            |||,
          },
          {
            name: 'invalid_images',
            expression: |||
              variables.all_containers
              .filter(c, !(c.image in variables.allowed_list))
              .map(c, c.image)
            |||,
          },
        ],
        validations: [
          {
            expression: 'size(variables.invalid_images) == 0',
            messageExpression: |||
              "Deployment rejected! The following container image(s) are not permitted on the allowlist: " +  variables.invalid_images.join(", ")
            |||,
          },
        ],
      },
    },
    {
      apiVersion: 'admissionregistration.k8s.io/v1',
      kind: 'ValidatingAdmissionPolicyBinding',
      metadata: {
        name: 'allow-specific-images-vap-binding',
      },
      spec: {
        policyName: 'require-image-pinned-by-digest-binding',
        validationActions: [
          'Audit',
        ],
        matchResources: {},
      },
    },
    {
      apiVersion: 'admissionregistration.k8s.io/v1',
      kind: 'ValidatingAdmissionPolicy',
      metadata: {
        name: 'allow-specific-images-vap',
        annotations: {
          'policies.kyverno.io/title': 'Block unknown images',
          'policies.kyverno.io/category': 'Best Practices',
          'policies.kyverno.io/severity': 'High',
        },
      },
      spec: {
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
        variables: [
          {
            name: 'allowed_list',
            expression: std.toString(std.map(function(image) '%s:%s' % [image.image, image.tag], std.objectValues(images.container))),
          },
          {
            name: 'all_containers',
            expression: |||
              object.spec.?containers.orValue([]) +
              object.spec.?initContainers.orValue([]) +
              object.spec.?ephemeralContainers.orValue([])
            |||,
          },
          {
            name: 'invalid_images',
            expression: |||
              variables.all_containers
              .filter(c, !(c.image in variables.allowed_list))
              .map(c, c.image)
            |||,
          },
        ],
        validations: [
          {
            expression: 'size(variables.invalid_images) == 0',
            messageExpression: |||
              "Deployment rejected! The following container image(s) are not permitted on the allowlist: " +  variables.invalid_images.join(", ")
            |||,
          },
        ],
      },
    },

  ]
