{
  annotations: {
    externalDns: {
      local prefix = 'external-dns.kubernetes.io',
      hostname(value):: {
        ['%s/hostname' % prefix]: value,
      },
    },
  },
}
