local argocd = import 'argocd.libsonnet';
local chart = (import 'images.libsonnet').helm.external_secrets;

argocd.applicationHelm(
  name='external-secrets',
  targetnamespace='external-secrets',
  chart=chart.chart,
  chartUrl=chart.chartUrl,
  chartVersion=chart.chartVersion,
  releaseName='external-secrets',
)
