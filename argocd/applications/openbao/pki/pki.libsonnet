function(input=import 'defaultInput.libsonnet')
  local tf = import 'tf/tf.libsonnet';
  local lib = import 'lib.libsonnet';
  local tfVault = tf.providers.vault;

  std.objectValues(
    {
      mount: tfVault.resource.vaultMount.new('glusterfs_pki', 'glusterfs_pki', 'pki'),
      rootCa: tf.providers.sops.data.sopsFile.new('glusterfs_pki_root_ca', 'pki/glusterfs_root_ca.pem.enc').withInputType('raw'),
      intCa: tf.providers.sops.data.sopsFile.new('glusterfs_pki_int_ca', 'pki/glusterfs_int_ca.pem.enc').withInputType('raw'),
      intCSR: tfVault.resource.vaultPkiSecretBackendIntermediateCertRequest.new('pki_int_csr', self.mount.ref().fields.path(), 'kokev int', 'internal'),
      signedCSR: tfVault.resource.vaultPkiSecretBackendRootSignIntermediate.new('pki_int_ca', self.mount.ref().fields.path(), '', self.intCSR.ref().fields.csr()),
      vals: [
        tfVault.resource.vaultPkiSecretBackendConfigCa.new('glusterfs_root_ca', self.mount.ref().fields.path(), self.rootCa.ref().fields.raw()),

        tfVault.resource.vaultPkiSecretBackendRole.new('glusterfs', self.mount.ref().fields.path(), 'glusterfs_role')
        .withAllowedDomains(['*.lan'])
        .withAllowGlobDomains(true)
        .withMaxTtl('43800h'),  // 5 Years

        tfVault.resource.vaultPkiSecretBackendIntermediateSetSigned.new('pki_int_signed', self.mount.ref().fields.path(), self.signedCSR.ref().fields.certificate()),

      ] + lib.optional(input.globals.config.id != 'test', [
        tfVault.resource.vaultPkiSecretBackendConfigCa.new('glusterfs_int_ca', self.mount.ref().fields.path(), self.intCa.ref().fields.raw()),
        tfVault.resource.vaultPkiSecretBackendConfigIssuers.new('config', self.mount.ref().fields.path())
        //  # TODO: Get from data source
        .withDefault('5099e2cf-1263-31c4-1c00-6a10f712cb62'),
      ]),
    }
  )
