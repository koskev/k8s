local globals = import 'globals.libsonnet';
local tf = import 'tf/tf.libsonnet';
[
  tf.providers.desec.resource.desecDomain.new('kokev', globals.domain),
  tf.providers.desec.resource.desecRrset.new(
    'kokev-dmarc',
    globals.domain,
    rdata=['"v=DMARC1; p=reject; sp=reject; rua=mailto:dmarc.report@kokev.de; ruf=mailto:dmarc.report@kokev.de; ri=86400"'],
    subname='_dmarc',
    ttl=3600,
    type='TXT',
  ),

  tf.providers.desec.resource.desecRrset.new(
    'kokev-domainkey',
    globals.domain,
    rdata=['"v=DKIM1; h=sha256; k=rsa; p=MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAyByJAcjSFcSL9Cz4wGGh2yiVMp0XTLcHv7I18wBj3hK7dGM/v/R4qfNGeAW6gkRtvoEI6G8KALYklfoWpQtQ5sBIR4RgRGIRMdG8COTFPpDjHiu1pNk0Q9qDYApOWNIved6Nueqe6ZnoJ2ijO+sl4N0L3a5HMQpQfVQm0OBh67FKA870YS0q9dJ" "9ilqHC3ov+x5zIvOEb0P9sp6G4Gy1t3VkG0GC7TNs4Ak/CPndSNZyUZ/U4ZdeLNM8aIHhhSDjhkXQQHWKfm3pI712QK0sRb/NL2VcaLIsK4BkcB3uwdNuAzjHA4E9AIY6e2rgD5AGuXCnASQkH8q5mR6VzetDmGR5TeJLlDlILzQbwCF6Ox0/cX+2H9cn/9RHitBN8lwVeaPPNB9XErhFATgH8eskBXTC4LH/we1G0+CjXyRgC6YULwA7zV8/qE" "erpeG3SKvtqy1A+5KTJDt3jBaxfeEkbqsuncy/5LuR/qDf+UN+1GJYvP4H2e5gFQxvYYn1xnvNGVKo5GAbIgzecbDae8KnTiDv4AWWhaTxwkEL5RpFHGovNjQDEATz4rCvDJ8cPjVgD19tEr84O1Qchh4alPdKDW5M9L8OkBi5QBvi3CSgFqeTfGRIHSQlrVx2hl4uONy+VBFCoZ2r02bCX7V9UDz2eMYdaKCF9Ince70wy6SAfQMCAwEAAQ=="'],
    subname='mail._domainkey',
    ttl=3600,
    type='TXT',
  ),

  tf.providers.desec.resource.desecRrset.new(
    'kokev-spf',
    globals.domain,
    rdata=['"v=spf1 mx -all"'],
    subname='@',
    ttl=3600,
    type='TXT',
  ),

  tf.providers.desec.resource.desecRrset.new(
    'kokev-mx',
    globals.domain,
    rdata=['1 mail.kokev.de.'],
    subname='@',
    ttl=3600,
    type='MX',
  ),

  tf.providers.desec.resource.desecRrset.new(
    'kokev-aaaa',
    globals.domain,
    rdata=['2a03:4000:58:fcd::1'],
    subname='@',
    ttl=3600,
    type='AAAA',
  ),
  tf.providers.desec.resource.desecRrset.new(
    'kokev-aaaa-wildcard',
    globals.domain,
    rdata=['2a03:4000:58:fcd::1'],
    subname='*',
    ttl=3600,
    type='AAAA',
  ),

  tf.providers.desec.resource.desecRrset.new(
    'kokev-a',
    globals.domain,
    rdata=['202.61.194.167'],
    subname='@',
    ttl=3600,
    type='A',
  ),

  tf.providers.desec.resource.desecRrset.new(
    'kokev-a-wildcard',
    globals.domain,
    rdata=['202.61.194.167'],
    subname='*',
    ttl=3600,
    type='A',
  ),

  tf.providers.desec.resource.desecRrset.new(
    'kokev-ns',
    globals.domain,
    rdata=['ns1.desec.io.', 'ns2.desec.org.'],
    subname='@',
    ttl=3600,
    type='NS',
  ),

  tf.providers.desec.resource.desecRrset.new(
    'kokev-caa',
    globals.domain,
    rdata=['0 issue "letsencrypt.org"'],
    subname='@',
    ttl=3600,
    type='CAA',
  ),
]
