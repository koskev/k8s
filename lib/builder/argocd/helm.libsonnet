local app = import 'app.libsonnet';

{
  helm:: {

    new(name, targetnamespace, releaseName, chart, namespace='argocd'):: self + app.application.new(name, targetnamespace, namespace) {
      assert std.isString(name),
      assert std.isString(targetnamespace),
      assert std.isString(releaseName),
      assert std.isString(namespace),
      assert std.isObject(chart) && std.objectHas(chart, 'chart') && std.objectHas(chart, 'repoURL') && std.objectHas(chart, 'targetRevision'),
      spec+: {
        destination+: {
          namespace: targetnamespace,
          server: 'https://kubernetes.default.svc',
        },
        source: {
          helm: {
            releaseName: releaseName,
          },
        } + chart,
      },
    },

    withValues(values, valuesToString=false):: self {
      assert std.isObject(values),
      spec+: {
        source+: {
          helm+: {} + if valuesToString then { values: std.manifestJson(values) } else { valuesObject: values },
        },
      },
    },
  },
}
