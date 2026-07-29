#!/usr/bin/env bash

sudo nft delete table ip6 nat_kind
sudo nft add table ip6 nat_kind
sudo nft add chain ip6 nat_kind output \{ type nat hook output priority filter \; \}

podman ps -q --filter "label=io.x-k8s.cloud-provider-kind.loadbalancer.name=kind/ingress-traefik-external/ingress-traefik-external" --format json | jq -r '.[].Ports[] | select(.container_port == 80 or .container_port == 443) | "\(.container_port) \(.host_port)"' | while read -r c_port h_port; do
    if [ -n "$h_port" ] && [ "$h_port" != "null" ]; then
        echo "Adding rule for $h_port -> $c_port"
        sudo nft add rule ip6 nat_kind output oifname "lo" tcp dport "$c_port" redirect to :"$h_port"
    fi
done
