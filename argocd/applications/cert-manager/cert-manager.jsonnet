local argocd = import 'argocd.libsonnet';
local images = (import 'images.libsonnet');
local k8s = import 'k8s.libsonnet';

local name = 'cert-manager';
local namespace = 'cert-manager';

function(input=import 'defaultInput.libsonnet')
  (import 'desec/desec.libsonnet')(input) +
  [
    argocd.applicationHelm(
      name=name,
      targetnamespace=namespace,
      chart=images.helm.cert_manager,
      releaseName=name,
      values={
        installCRDs: true,
        namespace: namespace,
      },
    ),

    // TODO: use vault?
    k8s.builder.definition.new('cert-manager.io/v1', 'ClusterIssuer', 'private-issuer', namespace).withSpec({
      selfSigned: {},
    }),
  ]
