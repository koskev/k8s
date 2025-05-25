local packer = import '../debian-arm64.libsonnet';
local params = std.extVar('PARAMS');
packer.packer(
  name='rpi-server',
  secret_id=params.secret_id,
  role_id=params.role_id,
  encryption_format='xchacha20,aes-adiantum-plain64',
  encryption_memory_m=512,
)
