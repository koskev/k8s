function(input=import 'defaultInput.libsonnet')
  local k8s = import 'k8s.libsonnet';
  local image = (import 'images.libsonnet').container.telegraf;

  local name = 'telegraf';
  local namespace = input.applications.monitoring.config.namespace;
  local config_name = '%s-config' % name;

  [
    k8s.secret.externalSecretExtract(config_name, namespace, templateData={
      'telegraf.conf': std.manifestTomlEx({
        global_tags: {},
        agent: {
          interval: '10s',
          round_interval: true,
          metric_batch_size: 1000,
          metric_buffer_limit: 10000,
          collection_jitter: '0s',
          flush_interval: '10s',
          flush_jitter: '0s',
          precision: '0s',
          hostname: name,
          omit_hostname: false,
        },
        inputs: {
          mqtt_consumer: [
            {
              name_override: 'mqtt_sensors',
              servers: ['tcp://emqx.emqx:1883'],
              topics: [
                'zigbee2mqtt/#',
              ],
              client_id: 'telegraf_z2m',

              username: name,
              password: '{{ .emqx_password }}',

              data_format: 'json',
            },
            {
              name_override: 'mqtt_sensors',
              servers: ['tcp://emqx.emqx:1883'],
              topics: [
                'esphome/test',
                'esphome/gas-meter/sensor/gas_total/state',
                'esphome/air-quality/sensor/+/state',
                'esphome/humidity_kevin/sensor/+/state',
                'esphome/gasmeter-ai/main/value',
                'solar/dtu/bkw/current_power',
                'solar/dtu/bkw/daily_yield',
              ],
              client_id: name,
              username: name,
              password: '{{ .emqx_password }}',
              data_format: 'value',
              data_type: 'float',
            },
          ],


        },
        outputs: {
          influxdb_v2: [{
            urls: ['http://influxdb:8086'],
            token: '{{ .influx_token }}',
            organization: 'k8s',
            bucket: 'sensors',
          }],
          health: [{
            service_address: 'http://:8080',
          }],
        },
      }, ' '),
    }),
    k8s.builder.apps.deployment.new(name, namespace)
    .withVolume({
      name: config_name,
      secret: {
        secretName: config_name,
      },
    })
    .withContainer(
      k8s.builder.apps.container.new(name, image.image, image.tag)
      .withMemoryRequest('64Mi')
      .withMount(config_name, '/etc/telegraf')
    ),
  ]
