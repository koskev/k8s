local tf = import 'tf/tf.libsonnet';
local compiler = import 'utils/compile.libsonnet';

local rootInput = (import 'defaultInput.libsonnet') + (import 'config_test.libsonnet');
function(type=compiler.types.argocd, tfStage=compiler.tf.stages.kubernetes)
  local kubernetesConfig = {
    config_path: '~/.kube/config',
    config_context: 'kind-kind',
  };
  compiler.build(
    type,
    [
      tf.stage('bootstrap', [
        tf.provider('helm', {
          kubernetes: kubernetesConfig,
        }),
        tf.provider('kubernetes', kubernetesConfig),
      ]),
      tf.provider('kubernetes', kubernetesConfig),
    ] +
    (import 'argocd/argocd/entrypoint.jsonnet')(rootInput)
    + (import 'argocd/applications.jsonnet')(rootInput),
    compiler.types.argocd,
    tfStage=tfStage,
  )
