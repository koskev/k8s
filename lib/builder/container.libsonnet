{
  new(name, image, tag):: {
    assert std.isString(name),
    assert std.isString(image),
    assert std.isString(tag),
    name: name,
    image: '%s:%s' % [image, tag],

    // Adds an environment variable to the container
    withEnv(name, value):: self {
      assert std.isString(name),
      env+: [{
        name: name,
        value: std.toString(value),
      }],
    },

    withEnvValueFromSecret(name, secretName, secretKey):: self {
      assert std.isString(name),
      assert std.isString(secretName),
      assert std.isString(secretKey),
      env+: [{
        name: name,
        valueFrom: {
          secretKeyRef: {
            name: secretName,
            key: secretKey,
          },
        },
      }],
    },

    withEnvFromSecret(secretName):: self {
      assert std.isString(secretName) : 'The secretName is not a string',
      envFrom+: [
        {
          secretRef: {
            name: secretName,
          },

        },
      ],

    },

    withImage(image, tag):: self {
      assert std.isString(image),
      assert std.isString(tag),
      _image: '%s:%s' % [image, tag],
    },

    withCommand(command):: self {
      assert std.isArray(command),
      command: command,
    },

    withArgs(args):: self {
      assert std.isArray(args),
      args: args,
    },

    withPort(port, protocol='TCP'):: self {
      assert std.isNumber(port),
      assert std.isString(protocol),
      ports+: [{
        containerPort: port,
        protocol: protocol,
      }],
    },

    withMount(name, path, subPath='', readonly=false):: self {
      assert std.isString(name),
      assert std.isString(path),
      assert std.isString(subPath),
      volumeMounts+: [{
        name: name,
        mountPath: path,
        [if readonly then 'readOnly']: readonly,
        [if std.length(subPath) > 0 then 'subPath']: subPath,
      }],
    },

    withMemoryRequest(requestMemory):: self {
      assert std.isString(requestMemory) : 'The memory needs to be string like 256Mi',
      resources+: {
        requests+: {
          memory+: requestMemory,
        },
      },
    },
    withCpuRequest(requestCpu):: self {
      assert std.isString(requestCpu) : 'The cpu needs to be string like 100m',
      resources+: {
        requests+: {
          cpu: requestCpu,
        },
      },
    },
    withMemoryLimit(limitMemory):: self {
      assert std.isString(limitMemory) : 'The memory needs to be string like 256Mi',
      resources+: {
        limits+: {
          memory: limitMemory,
        },
      },
    },
    withCpuLimit(limitCpu):: self {
      assert std.isString(limitCpu) : 'The cpu needs to be string like 100m',
      resources+: {
        limits+: {
          cpu: limitCpu,
        },
      },
    },
    withImagePullPolicy(policy):: self {
      assert std.isString(policy),
      assert policy == 'Always' || policy == 'IfNotPresent',
      imagePullPolicy: policy,
    },

    withExtraSpec(spec):: self + spec,

    withLivenessProbe(probe):: self {
      livenessProbe: probe,
    },
  },
}
