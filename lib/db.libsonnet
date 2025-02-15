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
  user(name, namespace, database=name, secretTemplate={}, privileges='OWNER', secretName=name, role=name)::
    {
      apiVersion: 'db.movetokube.com/v1alpha1',
      kind: 'PostgresUser',
      metadata: {
        name: name,
        namespace: namespace,
      },
      spec: {
        role: role,
        database: namespace,
        secretName: secretName,
        privileges: privileges,
        secretTemplate: secretTemplate,
      },
    },

}
