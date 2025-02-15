local secret = import 'secret.libsonnet';
local image = (import 'images.libsonnet').container.signal_bridge;
local yqgo = (import 'images.libsonnet').container.yqgo;
local k8s = import 'k8s.libsonnet';


local name = 'signal-bridge';
local namespace = 'default';
local image = (import 'images.libsonnet').container.signal_bridge;
local binaryName = 'mautrix-signal';
local port = 29328;

local bridge = import 'matrix_bridge.libsonnet';

bridge.createMatrixBridge(name, namespace, image, binaryName, port)
