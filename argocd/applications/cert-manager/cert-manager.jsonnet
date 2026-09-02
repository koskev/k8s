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
    k8s.builder.definition.new('cert-manager.io/v1', 'Issuer', 'self-signed-issuer', namespace).withSpec({
      selfSigned: {},
    }).withWave(1),
    k8s.builder.definition.new('cert-manager.io/v1', 'Certificate', 'self-signed-ca', namespace).withSpec({
      isCA: true,
      commonName: 'self-signed-ca',
      secretName: 'self-signed-ca',
      privateKey: {
        algorithm: 'ECDSA',
        size: 256,
      },
      issuerRef: {
        name: 'self-signed-issuer',
        kind: 'Issuer',
        group: 'cert-manager.io',
      },
    }).withWave(2),
    k8s.builder.definition.new('cert-manager.io/v1', 'ClusterIssuer', 'internal-issuer', namespace).withSpec({
      ca: {
        secretName: 'self-signed-ca',
      },
    }).withWave(3),
  ]
