local app = import 'app.libsonnet';
local globals = import 'globals.libsonnet';

{
  repo:: {
    new(name, path, targetnamespace, namespace='argocd', url=globals.repository, revision='HEAD', recurse=false, project='gpg', autosync=true):: app.application.new(name, targetnamespace, namespace) {
      spec+: {
        project: project,
        source+: {
          directory: {
            jsonnet: {
              libs: ['lib', 'argocd', '.'],
            },
          } + if recurse then { recurse: recurse } else {}
          ,
          path: path,
          targetRevision: revision,
        },
      } + self.withUrl(url),
    },

    withExclude(exclude):: self.withSpec({
      source+: {
        directory+: {
          exclude: exclude,
        },
      },
    }),

    withUrl(url):: self.withSpec({
      source+: {
        repoURL: url,
      },
    }),
  },
}
