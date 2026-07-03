{
  new(terraformName, storage_provisioner):: {
    _type:: 'tf',
    resource+: {
      kubernetes_storage_class_v1+: { [terraformName]+: {
        storage_provisioner: storage_provisioner,
      } },
    },
    withReclaimPolicy(value):: self {
      resource+: {
        kubernetes_storage_class_v1+: { [terraformName]+: { reclaim_policy: value } },
      },
    },
    withVolumeBindingMode(value):: self {
      resource+: {
        kubernetes_storage_class_v1+: { [terraformName]+: { volume_binding_mode: value } },
      },
    },
    withStorageProvisioner(value):: self {
      resource+: {
        kubernetes_storage_class_v1+: { [terraformName]+: { storage_provisioner: value } },
      },
    },
    withParameters(value):: self {
      resource+: {
        kubernetes_storage_class_v1+: { [terraformName]+: { parameters: value } },
      },
    },
    withAllowVolumeExpansion(value):: self {
      resource+: {
        kubernetes_storage_class_v1+: { [terraformName]+: { allow_volume_expansion: value } },
      },
    },
    withId(value):: self {
      resource+: {
        kubernetes_storage_class_v1+: { [terraformName]+: { id: value } },
      },
    },
    withMountOptions(value):: self {
      resource+: {
        kubernetes_storage_class_v1+: { [terraformName]+: { mount_options: value } },
      },
    },
  },
}
