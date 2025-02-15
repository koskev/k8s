local name = 'whatsapp-bridge';
local namespace = 'default';
local image = (import 'images.libsonnet').container.whatsapp_bridge;
local binaryName = 'mautrix-whatsapp';
local port = 29318;

local bridge = import 'matrix_bridge.libsonnet';

bridge.createMatrixBridge(name, namespace, image, binaryName, port)
