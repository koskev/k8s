{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_storage_class+: { [terraformName]+: {
      } },
    },
    withAllowVolumeExpansion(value):: self {
      data+: {
        kubernetes_storage_class+: { [terraformName]+: { allow_volume_expansion: value } },
      },
    },
    withVolumeBindingMode(value):: self {
      data+: {
        kubernetes_storage_class+: { [terraformName]+: { volume_binding_mode: value } },
      },
    },
    withStorageProvisioner(value):: self {
      data+: {
        kubernetes_storage_class+: { [terraformName]+: { storage_provisioner: value } },
      },
    },
    withId(value):: self {
      data+: {
        kubernetes_storage_class+: { [terraformName]+: { id: value } },
      },
    },
    withMountOptions(value):: self {
      data+: {
        kubernetes_storage_class+: { [terraformName]+: { mount_options: value } },
      },
    },
    withParameters(value):: self {
      data+: {
        kubernetes_storage_class+: { [terraformName]+: { parameters: value } },
      },
    },
    withReclaimPolicy(value):: self {
      data+: {
        kubernetes_storage_class+: { [terraformName]+: { reclaim_policy: value } },
      },
    },
  },
}
