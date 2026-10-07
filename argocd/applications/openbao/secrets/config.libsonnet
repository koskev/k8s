function(input=import 'defaultInput.libsonnet')
  local tf = import 'tf/tf.libsonnet';
  local tfVault = tf.providers.vault;
  {
    tfName: 'secrets',
    mount: tfVault.resource.vaultMount.new(self.tfName, 'secrets', 'kv')
           .withOptions({ version: '2' })
           .withDescription('Kubernetes secrets'),
    openbao_secrets: tf.providers.sops.data.sopsFile.new('openbao_secrets', '${each.value}')
                     .withForEach(tf.call('fileset(path.module, "openbao_secrets/**/*.{json,yaml}")')),
    secrets: tfVault.resource.vaultKvSecretV2.new(self.tfName, self.mount.ref().fields.path(), tf.call('split(".", trimprefix(each.key, "openbao_secrets/"))[0]'))
             .withDataJson(tf.call('jsonencode(each.value.data)'))
             .withForEach(self.openbao_secrets.ref().plain()),
  }
