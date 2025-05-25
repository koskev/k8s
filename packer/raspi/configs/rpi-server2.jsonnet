local packer = import '../debian-arm64.libsonnet';
local params = std.extVar('PARAMS');
packer.packer(
  name='rpi-server2',
  secret_id=params.secret_id,
  role_id=params.role_id,
  encryption_format='aes-xts-plain64',
  encryption_memory_m=4000,
)
