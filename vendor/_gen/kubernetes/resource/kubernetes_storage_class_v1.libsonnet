{
  '#new':: { 'function': { help: |||
    Storage class is the foundation of dynamic provisioning, allowing cluster administrators to define abstractions for the underlying storage platform. Read more [here] (https://kubernetes.io/blog/2017/03/dynamic-provisioning-and-storage-classes-kubernetes/)
  ||| } },
  local outerSelf = self,
  new(terraformName, storage_provisioner):: self.functions(terraformName) {
    ref():: outerSelf.ref(terraformName),
    _type:: 'tf',
    resource+: {
      kubernetes_storage_class_v1+: {
        [terraformName]+: {
          storage_provisioner: storage_provisioner,
        },
      },
    },
  },
  functions(terraformName):: {
    withForEach(value):: self {
      resource+: {
        kubernetes_storage_class_v1+: { [terraformName]+: { for_each: value } },
      },
    },
    withDependsOn(value):: self {
      resource+: {
        kubernetes_storage_class_v1+: { [terraformName]+: { depends_on: value } },
      },
    },
    withCount(value):: self {
      resource+: {
        kubernetes_storage_class_v1+: { [terraformName]+: { count: value } },
      },
    },
    withLifecycle(value):: self {
      resource+: {
        kubernetes_storage_class_v1+: { [terraformName]+: { lifecycle: value } },
      },
    },
    withProvider(value):: self {
      resource+: {
        kubernetes_storage_class_v1+: { [terraformName]+: { provider: value } },
      },
    },
    withProviders(value):: self {
      resource+: {
        kubernetes_storage_class_v1+: { [terraformName]+: { providers: value } },
      },
    },
    '#allow_volume_expansion':: { 'function': { help: |||
      Indicates whether the storage class allow volume expand
    ||| } },
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
    '#mount_options':: { 'function': { help: |||
      Persistent Volumes that are dynamically created by a storage class will have the mount options specified
    ||| } },
    withMountOptions(value):: self {
      resource+: {
        kubernetes_storage_class_v1+: { [terraformName]+: { mount_options: value } },
      },
    },
    '#parameters':: { 'function': { help: |||
      The parameters for the provisioner that should create volumes of this storage class
    ||| } },
    withParameters(value):: self {
      resource+: {
        kubernetes_storage_class_v1+: { [terraformName]+: { parameters: value } },
      },
    },
    '#reclaim_policy':: { 'function': { help: |||
      Indicates the type of the reclaim policy
    ||| } },
    withReclaimPolicy(value):: self {
      resource+: {
        kubernetes_storage_class_v1+: { [terraformName]+: { reclaim_policy: value } },
      },
    },
    '#storage_provisioner':: { 'function': { help: |||
      Indicates the type of the provisioner
    ||| } },
    withStorageProvisioner(value):: self {
      resource+: {
        kubernetes_storage_class_v1+: { [terraformName]+: { storage_provisioner: value } },
      },
    },
    '#volume_binding_mode':: { 'function': { help: |||
      Indicates when volume binding and dynamic provisioning should occur
    ||| } },
    withVolumeBindingMode(value):: self {
      resource+: {
        kubernetes_storage_class_v1+: { [terraformName]+: { volume_binding_mode: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ kubernetes_storage_class_v1.%s%s }' % [terraformName, suffix],
    fields:: {
      '#allow_volume_expansion':: { 'function': { help: |||
        Indicates whether the storage class allow volume expand
      ||| } },
      allow_volume_expansion(suffix=''):: refSelf.plain('.allow_volume_expansion%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#mount_options':: { 'function': { help: |||
        Persistent Volumes that are dynamically created by a storage class will have the mount options specified
      ||| } },
      mount_options(suffix=''):: refSelf.plain('.mount_options%s' % suffix),
      '#parameters':: { 'function': { help: |||
        The parameters for the provisioner that should create volumes of this storage class
      ||| } },
      parameters(suffix=''):: refSelf.plain('.parameters%s' % suffix),
      '#reclaim_policy':: { 'function': { help: |||
        Indicates the type of the reclaim policy
      ||| } },
      reclaim_policy(suffix=''):: refSelf.plain('.reclaim_policy%s' % suffix),
      '#storage_provisioner':: { 'function': { help: |||
        Indicates the type of the provisioner
      ||| } },
      storage_provisioner(suffix=''):: refSelf.plain('.storage_provisioner%s' % suffix),
      '#volume_binding_mode':: { 'function': { help: |||
        Indicates when volume binding and dynamic provisioning should occur
      ||| } },
      volume_binding_mode(suffix=''):: refSelf.plain('.volume_binding_mode%s' % suffix),
    },
  },
}
