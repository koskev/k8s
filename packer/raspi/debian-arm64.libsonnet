{
  packer(
    name,
    secret_id,
    role_id,
    vault_addr='https://vault.kokev.de',
    encryption_format='xchacha20,aes-adiantum-plain64',
    encryption_memory_m=512,
  )::
    assert std.isString(name);
    assert std.isString(secret_id);
    assert std.isString(role_id);
    assert std.isString(vault_addr);
    assert std.isString(encryption_format);
    assert std.isNumber(encryption_memory_m);
    {
      variables: {
        vm_name: 'debian-arm64-%s' % name,
        iso_url: 'https://download.grml.org/grml-small-2025.05-arm64.iso',
        iso_checksum: 'file:https://download.grml.org/SHA256SUMS-2025.05',
        ssh_username: 'root',
        ssh_password: 'packer',
        ssh_timeout: '6h',
        output_directory: './build/%s' % name,
        disk_size: '8G',
        VAULT_ADDR: vault_addr,
        NAME: name,
        SECRET_ID: secret_id,
        ROLE_ID: role_id,
      },
      builders: [
        {
          type: 'qemu',
          accelerator: 'kvm',
          machine_type: 'virt',
          memory: 20048,
          cpus: 2,
          net_device: 'virtio-net',
          use_default_display: true,
          vm_name: '{{ user `vm_name` }}',
          iso_url: '{{ user `iso_url` }}',
          iso_checksum: '{{ user `iso_checksum` }}',
          ssh_username: '{{ user `ssh_username` }}',
          ssh_password: '{{ user `ssh_password` }}',
          ssh_timeout: '{{ user `ssh_timeout` }}',
          disk_size: '{{ user `disk_size` }}',
          disk_detect_zeroes: 'on',
          disk_interface: 'virtio-scsi',
          format: 'raw',
          output_directory: '{{ user `output_directory` }}',
          qemu_binary: 'qemu-system-aarch64',
          qemuargs: [
            [
              '-bios',
              '/tmp/QEMU_EFI.fd',
            ],
            [
              '-machine',
              'virt,gic-version=3',
            ],
            [
              '-cpu',
              'cortex-a53',
            ],
            [
              '-monitor',
              'none',
            ],
            [
              '-boot',
              'strict=off',
            ],
          ],
          headless: true,
          boot_command: [
            'e<wait>',
            '<down><down><down><down>',
            '<leftCtrlOn>e<leftCtrlOff>ssh={{ user `ssh_password` }} <leftCtrlOn>x<leftCtrlOff>',
          ],
          shutdown_command: 'sudo shutdown',
        },
      ],
      local vaultVars = {
        VAULT_ADDR: '{{ user `VAULT_ADDR` }}',
        ROLE_ID: '{{ user `ROLE_ID` }}',
        SECRET_ID: '{{ user `SECRET_ID` }}',
        NAME: '{{ user `NAME` }}',
      },
      provisioners: [
        {
          type: 'shell',
          inline: 'set +e && apt-get update; set -e && apt-get -y install curl jq',
        },
        {
          type: 'file',
          source: './files/2025-05-13-raspios-bookworm-arm64-lite.img.xz',
          destination: '/tmp/pi_image.img.xz',
        },
        {
          type: 'file',
          source: './files/chroot',
          destination: '/tmp/chroot',
        },
        {
          type: 'shell',
          inline: "envsubst '%s' < /tmp/chroot/root/getKey.tmpl > /tmp/chroot/root/getKey.sh && chmod +x /tmp/chroot/root/getKey.sh" % std.join(',', std.map(function(var) '$%s' % var, std.objectFields(vaultVars))),
          environment_vars: std.map(function(var) '%s=%s' % [var.key, var.value], std.objectKeysValues(vaultVars)),
        },
        {
          type: 'shell',
          script: './scripts/prepare.sh',
          environment_vars: [
            'HOSTNAME={{ user `NAME` }}',
            'ENCRYPTION_FORMAT=%s' % encryption_format,
            'ENCRYPTION_MEMORY_KB=%d' % (encryption_memory_m * 100),
          ],
        },
        {
          type: 'shell',
          script: './scripts/initramfs.sh',
        },
        //{
        //  type: 'shell',
        //  inline: 'sleep infinity',
        //},
      ],
    },
}
