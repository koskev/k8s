local compiler = import 'utils/compile.libsonnet';
{
  oidcSecret(name):: {
    _type:: compiler.types.script,
    script: './oidc.sh',
    arguments: name,
  },
}
