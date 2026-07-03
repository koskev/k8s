{
  new(terraformName, storage_provisioner):: {
    _type:: 'tf',
    resource+: {
      kubernetes_storage_class+: { [terraformName]+: {
        storage_provisioner: storage_provisioner,
      } },
    },
    withAllowVolumeExpansion(value):: self {
      resource+: {
        kubernetes_storage_class+: { [terraformName]+: { allow_volume_expansion: value } },
      },
    },
    withMountOptions(value):: self {
      resource+: {
        kubernetes_storage_class+: { [terraformName]+: { mount_options: value } },
      },
    },
    withVolumeBindingMode(value):: self {
      resource+: {
        kubernetes_storage_class+: { [terraformName]+: { volume_binding_mode: value } },
      },
    },
    withStorageProvisioner(value):: self {
      resource+: {
        kubernetes_storage_class+: { [terraformName]+: { storage_provisioner: value } },
      },
    },
    withParameters(value):: self {
      resource+: {
        kubernetes_storage_class+: { [terraformName]+: { parameters: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_storage_class+: { [terraformName]+: { id: value } },
      },
    },
    withReclaimPolicy(value):: self {
      resource+: {
        kubernetes_storage_class+: { [terraformName]+: { reclaim_policy: value } },
      },
    },
  },
}
