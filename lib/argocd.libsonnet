local globals = import 'globals.libsonnet';
{
  application(name, targetnamespace, autosync=true):: {
    apiVersion: 'argoproj.io/v1alpha1',
    kind: 'Application',
    metadata: {
      name: name,
      namespace: 'argocd',
    },
    spec: {
      destination: {
        namespace: targetnamespace,
        server: 'https://kubernetes.default.svc',
      },
      source: {
      },
      project: 'default',
      syncPolicy: {
        syncOptions: ['CreateNamespace=true', 'ServerSideApply=true'],
        automated: {
          enabled: autosync,
          // Another "nice" argocd feature. Leads to inifinite syncs. Probably due to a "omitempty"...
          //prune: false,
          selfHeal: true,
        },
      },
    },
  },
  applicationRepo(name, targetnamespace, path, url=globals.repository, revision='main', recurse=false, project='gpg', autosync=true, exclude=''):: self.application(name, targetnamespace, autosync) + {
    spec+: {
      project: project,
      source+: {
        directory:
          {
            jsonnet: {
              libs: ['lib', 'argocd', '.'],
              extVars: [{
                name: 'ARGOCD_BRANCH',
                value: '$ARGOCD_APP_SOURCE_TARGET_REVISION',
              }],
            },
          }
          +
          (if recurse then { recurse: recurse } else {})
          +
          (if std.length(exclude) > 0 then { exclude: exclude } else {})
        ,
        path: path,
        repoURL: url,
        targetRevision: revision,
      },
    },
  },
  applicationHelm(
    name,
    targetnamespace,
    chart,
    releaseName=name,
    values={},
    valuesToString=false,
    autosync=true,
  ):: self.application(name, targetnamespace, autosync=autosync) + {
    spec+: {
      source+: {
        helm: {
                releaseName: releaseName,
              } +
              if valuesToString then { values: std.manifestJson(values) } else { valuesObject: values },
      } + chart,
    },
  },
  appProject(name, keys=[]):: {
    apiVersion: 'argoproj.io/v1alpha1',
    kind: 'AppProject',
    metadata: {
      name: name,
      namespace: 'argocd',
    },
    spec: {
      clusterResourceWhitelist: [
        {
          group: '*',
          kind: '*',
        },
      ],
      destinations: [
        {
          namespace: '*',
          server: '*',
        },
      ],
      signatureKeys: [
        {
          keyID: id,
        }
        for id in keys
      ],
      sourceRepos: [
        '*',
      ],
    },
  },
  appSettings(name, autosync=true, recursive=true, exclude=''):: {
    assert std.isString(name),
    assert std.isBoolean(autosync),
    assert std.isBoolean(recursive),
    assert std.isString(exclude),
    name: name,
    autosync: autosync,
    recursive: recursive,
    exclude: exclude,
  },
  addApps(appSettings, folder='')::
    local uniqueApps = std.uniq(appSettings, keyF=function(key) key.name);
    assert std.length(appSettings) == std.length(uniqueApps) : 'Duplicate app entry';
    [
      assert std.objectHas(app, 'name');
      assert std.objectHas(app, 'autosync');
      assert std.objectHas(app, 'recursive');
      assert std.objectHas(app, 'exclude');
      local basePath = 'argocd/applications';
      local path = if std.length(folder) > 0 then '%s/%s/%s' % [basePath, folder, app.name] else '%s/%s' % [basePath, app.name];
      self.applicationRepo(
        name='%s-app' % app.name,
        targetnamespace='argocd',
        path=path,
        recurse=app.recursive,
        autosync=app.autosync,
        exclude=app.exclude,
      )
      for app in appSettings
    ],
}
