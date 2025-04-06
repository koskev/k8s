local argocd = import 'argocd.libsonnet';

local apps = [
  argocd.appSettings('chhoto-url'),
  argocd.appSettings('esphome'),
  argocd.appSettings('hass'),
  argocd.appSettings('jellyfin'),
  argocd.appSettings('mumble'),
  argocd.appSettings('octoprint'),
  argocd.appSettings('renovate'),
  argocd.appSettings('signal'),
  argocd.appSettings('syncthing'),
  argocd.appSettings('whatsapp'),
  argocd.appSettings('zigbee2mqtt'),
  argocd.appSettings('grocy'),
  argocd.appSettings('hms-mqtt'),
  argocd.appSettings('minecraft'),
  argocd.appSettings('node-red'),
  argocd.appSettings('pihole'),
  argocd.appSettings('synapse'),
  argocd.appSettings('unbound'),
  argocd.appSettings('wireguard'),
];

argocd.addApps(apps, folder='default')
