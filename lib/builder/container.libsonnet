{
  new(name, image, tag):: {
    assert std.isString(name),
    name: name,
    image: '%s:%s' % [image, tag],

    withEnv(name, value):: self {
      assert std.isString(name),
      env+: [{
        name: name,
        value: std.toString(value),
      }],
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

    withMount(name, path, subPath=''):: self {
      assert std.isString(name),
      assert std.isString(path),
      volumeMounts+: [{
        name: name,
        mountPath: path,
        [if std.length(subPath) > 0 then 'subPath']: subPath,
      }],
    },

    withRessources(requestMemory):: self {
      resources: {
        requests: {
          memory: requestMemory,
        },
      },
    },
    withImagePullPolicy(policy):: self {
      assert policy == 'Always' || policy == 'IfNotPresent',
      imagePullPolicy: policy,
    },

    build():: self,
  },
}
