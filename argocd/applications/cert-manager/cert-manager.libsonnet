local argocd = import 'argocd.libsonnet';
local chart = (import 'images.libsonnet').helm.cert_manager;

argocd.applicationHelm(
  name='cert-manager',
  targetnamespace='cert-manager',
  chart=chart.chart,
  chartUrl=chart.chartUrl,
  chartVersion=chart.chartVersion,
  releaseName='cert-manager',
  values={
    installCRDs: true,
    namespace: 'cert-manager',
  },
)
