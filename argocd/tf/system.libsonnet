local images = import 'images.libsonnet';
local tf = import 'tf/tf.libsonnet';
local compiler = import 'utils/compile.libsonnet';

local config_path = '~/.kube/config';
[
  {
    _type:: compiler.types.tf,
    terraform: [
      {
        required_version: '>= 1.10.0',
        backend: {
          kubernetes: [
            {
              config_path: config_path,
              secret_suffix: 'state',
            },
          ],
        },
        required_providers: [
          images.tf,
        ],
      },
    ],
  },
  tf.provider('vault'),
  tf.provider('sops'),
  tf.provider('kubernetes', {
    config_path: config_path,
  }),
]
