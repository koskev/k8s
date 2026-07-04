local tf = import 'tf/tf.libsonnet';
local tfVault = tf.providers.vault;
std.objectValues(
  {
    mount: tfVault.resource.vaultMount
           .new('system', 'system', 'kv')
           .withOptions({ version: '2' })
           .withDescription('Bao system secets'),
    sops_file: tf.providers.sops.data.sopsFile.new('system', source_file=tf.call('each.value'))
               .withForEach(tf.call('fileset(path.module, "system/*.{json,yaml}")'))
    ,
    secrets: tfVault.resource.vaultKvSecretV2
             .new('system', self.mount.ref().fields.path(), tf.call('split(".", basename(each.key))[0]'))
             .withForEach(self.sops_file.ref().plain())
             .withDataJson(tf.call('jsonencode(each.value.data)')),
  }
)
