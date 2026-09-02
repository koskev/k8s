#!/usr/bin/env bash

sudo nft delete table ip6 nat_kind
sudo nft add table ip6 nat_kind
sudo nft add chain ip6 nat_kind output \{ type nat hook output priority filter \; \}


function get_ports() {
    CONTAINER_PORT=$1
    PORTS=$(podman ps -q --filter "label=io.x-k8s.cloud-provider-kind.loadbalancer.name=kind/ingress-traefik-external/ingress-traefik-external" --format json | jq -r ".[].Ports[] | select(.container_port == ${CONTAINER_PORT}) | \"\(.container_port) \(.host_port)\"")
    echo "$PORTS"
}

function add_rule() {
    CONTAINER_PORT=$1
    c_port="null"
    h_port="null"
    until [ "$c_port" != "null" ] && [ "$h_port" != "null" ]; do
	echo "Checking for ingress ports..."
	PORTS=$(get_ports "$CONTAINER_PORT")
	read -r c_port h_port <<< "$PORTS"
    done

    echo "Adding rule for $h_port -> $c_port"
    sudo nft add rule ip6 nat_kind output oifname "lo" tcp dport "$c_port" redirect to :"$h_port"
}

add_rule 80
add_rule 443
