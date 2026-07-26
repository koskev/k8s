local argocd = import 'argocd.libsonnet';
local tf = import 'tf/tf.libsonnet';
local compiler = import 'utils/compile.libsonnet';

function(input=(import 'defaultInput.libsonnet') + (import 'config_test.libsonnet'), type=compiler.types.argocd, tfStage=compiler.tf.stages.kubernetes)
  local rootRepo = argocd.applicationRepo(
    name='root',
    targetnamespace='argocd',
    path='argocd/clusters/test',
    input=input,
  );
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
        tf.providers.kubernetes.resource.kubernetesManifest.new('bootstrap-root-repo', rootRepo),
      ]),
      tf.provider('kubernetes', kubernetesConfig),
      rootRepo,
    ] +
    (import 'argocd/argocd/entrypoint.jsonnet')(input),
    compiler.types.argocd,
    tfStage=tfStage,
  )
