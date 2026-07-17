local tf = import 'tf/tf.libsonnet';
local tfVault = tf.providers.vault;

local tfName = 'secrets';

std.objectValues(
  {
    secrets: tf.providers.sops.data.sopsFile.new(tfName, 'secrets/${each.value}')
             .withForEach(tf.call('fileset("${path.module}/secrets", "*/*.{json,yaml}")')),
    openbao_secrets: tf.providers.sops.data.sopsFile.new('openbao_secrets', '${each.value}')
                     .withForEach(tf.call('fileset(path.module, "openbao_secrets/**/*.{json,yaml}")')),
    mount: tfVault.resource.vaultMount.new(tfName, 'secrets', 'kv')
           .withOptions({ version: '2' })
           .withDescription('Kubernetes secrets'),
    values: [
      tfVault.resource.vaultKvSecretV2.new(tfName, self.mount.ref().fields.path(), tf.call('split(".", trimprefix(each.key, "openbao_secrets/"))[0]'))
      .withDataJson(tf.call('jsonencode(each.value.data)'))
      .withForEach(self.openbao_secrets.ref().plain()),

      tf.providers.kubernetes.resource.kubernetesSecretV1.new(tfName)
      .withForEach(self.secrets.ref().plain())
      .withData(tf.call('each.value.data'))
      .addCustomData('metadata', {
        name: tf.call('split(".", basename(each.key))[0]'),
        namespace: tf.call('dirname(each.key)'),
      }),
    ],
  }
)
