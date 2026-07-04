local tf = import 'tf/tf.libsonnet';
local tfVault = tf.providers.vault;
std.objectValues(
  {
    mount: tfVault.resource.vaultMount.new('luks', 'luks', 'kv')
           .withOptions({ version: '2' })
           .withDescription('Luks encryption keys'),
    sops_file: tf.providers.sops.data.sopsFile.new('luks', '${each.value}')
               .withForEach('${fileset(path.module, "luks/*.{json,yaml}")}'),
    auth_backend: tfVault.resource.vaultAuthBackend.new('approle', 'approle'),
    policy: tfVault.resource.vaultPolicy.new(
      'luks',
      '${split(".", basename(each.key))[0]}',
      policy=|||
        path "luks/data/${split(".", basename(each.key))[0]}*" {
            capabilities = ["read", "list"]
          }
      |||
    )
            .withForEach(self.sops_file.ref().plain()),
    values: [

      tfVault.resource.vaultKvSecretV2
      .new('luks', self.mount.ref().fields.path(), '${split(".", basename(each.key))[0]}')
      .withForEach(self.sops_file.ref().plain())
      .withDataJson('${jsonencode(each.value.data)}'),

      tfVault.resource.vaultApproleAuthBackendRole.new('luks', '${split(".", basename(each.key))[0]}')
      .withForEach(self.sops_file.ref().plain())
      .withBackend(self.auth_backend.ref().fields.path())
      .withTokenPolicies([self.policy.ref().plain('[each.key].id')]),

    ],
  }
)
