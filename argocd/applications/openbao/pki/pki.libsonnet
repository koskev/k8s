function(input=import 'defaultInput.libsonnet')
  local tf = import 'tf/tf.libsonnet';
  local lib = import 'lib.libsonnet';
  local tfVault = tf.providers.vault;

  local common_prefix = 'private_pki';

  std.foldl(
    function(acc, val) acc + std.objectValues(val),
    std.objectValues(
      {
        local outerSelf = self,
        root: {
          local name = '%s/root_ca' % common_prefix,
          local tfName = std.strReplace(name, '/', '_'),
          mount: tfVault.resource.vaultMount.new('%s-mount' % tfName, name, 'pki'),
          rootCa: tf.providers.sops.data.sopsFile.new('%s-ca-data' % tfName, 'pki/glusterfs_root_ca.pem.enc').withInputType('raw'),
          vals: [tfVault.resource.vaultPkiSecretBackendConfigCa.new('%s-root_ca' % tfName, self.mount.ref().fields.path(), self.rootCa.ref().fields.raw())],
        },
        int: {
          local name = '%s/int_ca' % common_prefix,
          local tfName = std.strReplace(name, '/', '_'),
          mount: tfVault.resource.vaultMount.new('%s-mount' % tfName, name, 'pki'),
          intCa: tf.providers.sops.data.sopsFile.new('%s-ca-data' % tfName, 'pki/glusterfs_int_ca.pem.enc').withInputType('raw'),
          intCSR: tfVault.resource.vaultPkiSecretBackendIntermediateCertRequest.new('%s-csr' % tfName, self.mount.ref().fields.path(), 'kokev int', 'internal'),
          signedCSR: tfVault.resource.vaultPkiSecretBackendRootSignIntermediate.new('%s-ca' % tfName, outerSelf.root.mount.ref().fields.path(), 'kokev int', self.intCSR.ref().fields.csr()),
          signedCert: tfVault.resource.vaultPkiSecretBackendIntermediateSetSigned.new('%s-signed' % tfName, self.mount.ref().fields.path(), self.signedCSR.ref().fields.certificate()),
          vals: [
            tfVault.resource.vaultPkiSecretBackendRole.new('glusterfs', self.mount.ref().fields.path(), 'glusterfs_role')
            .withAllowedDomains(['*.lan'])
            .withAllowGlobDomains(true)
            .withMaxTtl('43800h'),  // 5 Years
            tfVault.resource.vaultPkiSecretBackendConfigIssuers.new('%s-config' % tfName, self.mount.ref().fields.path())
            .withDefault(self.signedCert.ref().fields.imported_issuers('[0]')),
          ] + lib.optional(input.globals.config.id != 'test', [
            tfVault.resource.vaultPkiSecretBackendConfigCa.new('glusterfs_int_ca', self.mount.ref().fields.path(), self.intCa.ref().fields.raw()),
          ]),
        },
      },
    ),
    []
  )
