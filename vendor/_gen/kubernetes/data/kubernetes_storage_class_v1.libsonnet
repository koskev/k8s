{
  new(terraformName):: {
    _type:: 'tf',
    data+: {
      kubernetes_storage_class_v1+: { [terraformName]+: {
      } },
    },
    '#withAllowVolumeExpansion': { 'function': { help: |||
      Indicates whether the storage class allow volume expand 
    ||| } },
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
    '#withMountOptions': { 'function': { help: |||
      Persistent Volumes that are dynamically created by a storage class will have the mount options specified 
    ||| } },
    withMountOptions(value):: self {
      data+: {
        kubernetes_storage_class_v1+: { [terraformName]+: { mount_options: value } },
      },
    },
    '#withParameters': { 'function': { help: |||
      The parameters for the provisioner that should create volumes of this storage class 
    ||| } },
    withParameters(value):: self {
      data+: {
        kubernetes_storage_class_v1+: { [terraformName]+: { parameters: value } },
      },
    },
    '#withReclaimPolicy': { 'function': { help: |||
      Indicates the type of the reclaim policy 
    ||| } },
    withReclaimPolicy(value):: self {
      data+: {
        kubernetes_storage_class_v1+: { [terraformName]+: { reclaim_policy: value } },
      },
    },
    '#withStorageProvisioner': { 'function': { help: |||
      Indicates the type of the provisioner 
    ||| } },
    withStorageProvisioner(value):: self {
      data+: {
        kubernetes_storage_class_v1+: { [terraformName]+: { storage_provisioner: value } },
      },
    },
    '#withVolumeBindingMode': { 'function': { help: |||
      Indicates when volume binding and dynamic provisioning should occur 
    ||| } },
    withVolumeBindingMode(value):: self {
      data+: {
        kubernetes_storage_class_v1+: { [terraformName]+: { volume_binding_mode: value } },
      },
    },
  },
}
