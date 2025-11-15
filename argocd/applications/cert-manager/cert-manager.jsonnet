local argocd = import 'argocd.libsonnet';
local chart = (import 'images.libsonnet').helm.cert_manager;

local name = 'cert-manager';
local namespace = 'cert-manager';

argocd.applicationHelm(
  name=name,
  targetnamespace=namespace,
  chart=chart,
  releaseName=name,
  values={
    installCRDs: true,
    namespace: namespace,
  },
)
