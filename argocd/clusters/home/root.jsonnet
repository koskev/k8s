local argocd = import 'argocd.libsonnet';
local tf = import 'tf/tf.libsonnet';
local compiler = import 'utils/compile.libsonnet';

local rootInput = (import 'defaultInput.libsonnet') + (import 'config_home.libsonnet');
function(input=(import 'defaultInput.libsonnet') + (import 'config_home.libsonnet'), type=compiler.types.argocd, tfStage=compiler.tf.stages.kubernetes)
  local rootRepo = argocd.applicationRepo(
    name='root',
    targetnamespace='argocd',
    path='argocd/clusters/home',
    input=rootInput,
  );
  local kubernetesConfig = {
    config_path: '~/.kube/config',
    config_context: 'kubernetes-admin@kubernetes',
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
    (import 'argocd/argocd/entrypoint.jsonnet')(rootInput)
    + (import 'argocd/applications.jsonnet')(rootInput)
    ,
    compiler.types.argocd,
    tfStage=tfStage,
  )
