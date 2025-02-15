{
  database(name, namespace, dropOnDelete=false)::
    {
      apiVersion: 'db.movetokube.com/v1alpha1',
      kind: 'Postgres',
      metadata: {
        name: name,
        namespace: namespace,
      },
      spec: {
        database: name,
        dropOnDelete: dropOnDelete,
      },
    },
  user(name, namespace, database=name, secretTemplate=null, privileges='OWNER', secretName=name, role=name)::
    {
      apiVersion: 'db.movetokube.com/v1alpha1',
      kind: 'PostgresUser',
      metadata: {
        name: name,
        namespace: namespace,
      },
      spec: {
        role: role,
        database: database,
        secretName: secretName,
        privileges: privileges,
      } + if secretTemplate != null then { secretTemplate: secretTemplate } else {},
    },

}
