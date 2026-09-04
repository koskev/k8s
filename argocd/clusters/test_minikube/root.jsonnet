local tf = import 'tf/tf.libsonnet';
local compiler = import 'utils/compile.libsonnet';

local rootInput = (import 'defaultInput.libsonnet') + (import 'argocd/clusters/test_minikube/config_test_minikube.libsonnet');
function(input={}, type=compiler.types.argocd, tfStage=compiler.tf.stages.kubernetes)
  local kubernetesConfig = {
    config_path: '~/.kube/config',
    config_context: 'minikube',
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
