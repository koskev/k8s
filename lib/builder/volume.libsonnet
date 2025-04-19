{
  new(name):: {
    assert std.isString(name),
    local data = self,
    _name: name,
    _env: [],
    _image: '',
    _args: [],
    _ports: [],
    _volumeMounts: [],

    withEnv(name, value):: self {
      assert std.isString(name),
      _env: data._env + [{
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
      _command: command,
    },

    withArgs(args):: self {
      assert std.isArray(args),
      _args: args,
    },

    withPort(port, protocol='TCP'):: self {
      assert std.isNumber(port),
      assert std.isString(protocol),
      _ports: data._ports + [{
        containerPort: port,
        protocol: protocol,
      }],
    },

    withMount(name, path, subPath=''):: self {
      assert std.isString(name),
      assert std.isString(path),
      _volumeMounts: data._volumeMounts + [{
        name: name,
        mountPath: path,
        [if std.length(subPath) > 0 then 'subPath']: subPath,
      }],
    },

    build():: {
      name: data._name,
      image: data._image,
      command: data._command,
      args: data._args,
      ports: data._ports,
      volumeMounts: data._volumeMounts,
    },
  },
}
