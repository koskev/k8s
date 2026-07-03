{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_storage_class_v1+: { [terraformName]+: {
      } },
    },
    withMountOptions(value):: self {
      data+: {
        kubernetes_storage_class_v1+: { [terraformName]+: { mount_options: value } },
      },
    },
    withParameters(value):: self {
      data+: {
        kubernetes_storage_class_v1+: { [terraformName]+: { parameters: value } },
      },
    },
    withReclaimPolicy(value):: self {
      data+: {
        kubernetes_storage_class_v1+: { [terraformName]+: { reclaim_policy: value } },
      },
    },
    withStorageProvisioner(value):: self {
      data+: {
        kubernetes_storage_class_v1+: { [terraformName]+: { storage_provisioner: value } },
      },
    },
    withVolumeBindingMode(value):: self {
      data+: {
        kubernetes_storage_class_v1+: { [terraformName]+: { volume_binding_mode: value } },
      },
    },
    withAllowVolumeExpansion(value):: self {
      data+: {
        kubernetes_storage_class_v1+: { [terraformName]+: { allow_volume_expansion: value } },
      },
    },
    withId(value):: self {
      data+: {
        kubernetes_storage_class_v1+: { [terraformName]+: { id: value } },
      },
    },
  },
}
