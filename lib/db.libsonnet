{
  database(name, namespace, dropOnDelete=false, databaseName=name, instance='')::
    {
      apiVersion: 'db.movetokube.com/v1alpha1',
      kind: 'Postgres',
      metadata: {
        name: name,
        namespace: namespace,
        annotations: {
          [if std.length(instance) > 0 then 'postgres.db.movetokube.com/instance']: instance,
        },
      },
      spec: {
        database: databaseName,
        dropOnDelete: dropOnDelete,
      },
    },
  user(name, namespace, database=name, secretTemplate=null, privileges='OWNER', secretName=name, role=name, instance='')::
    {
      apiVersion: 'db.movetokube.com/v1alpha1',
      kind: 'PostgresUser',
      metadata: {
        name: name,
        namespace: namespace,
        annotations: {
          [if std.length(instance) > 0 then 'postgres.db.movetokube.com/instance']: instance,
        },
      },
      spec: {
        role: role,
        database: database,
        secretName: secretName,
        privileges: privileges,
      } + if secretTemplate != null then { secretTemplate: secretTemplate } else {},
    },

}
