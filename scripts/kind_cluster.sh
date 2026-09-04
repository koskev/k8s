#!/usr/bin/env bash
set -ex

export VAULT_SKIP_VERIFY=true
export VAULT_ADDR="https://vault.0--1.nip.io"
export TF_STAGE="kubernetes"
export CONFIG="test"

alias kubectl="kubectl --context kind-kind"

DIRS=(
    "/mnt/hdd_gluster/postgres_data_immich"
    "/mnt/shared_data/"
    "/var/lib/postgres{1,2,3}"
    "/mnt/shared_data/k8s/forgejo"
    "/mnt/shared_data/k8s/prometheus/grafana_data"
    "/mnt/shared_data/k8s/prometheus/prometheus_data"
    "/mnt/shared_data/k8s/influx/data"
    "/mnt/shared_data/k8s/influx/config"
    "/mnt/ext_hdd/repos"
)

function coredns_redirect() {
    kubectl apply -f ./test/coredns.yaml
    kubectl rollout restart deployment coredns -n kube-system
}

function run_command() {
    podman ps -q --filter "label=io.x-k8s.kind.cluster=kind" | xargs -I {} podman exec {} bash -c "$*"
}

# Ask for sudo at the beginning
sudo nft delete table ip6 nat_kind
sudo nft add table ip6 nat_kind
sudo nft add chain ip6 nat_kind output \{ type nat hook output priority filter \; \}
sudo nft add rule ip6 nat_kind output oifname "lo" tcp dport 443 redirect to :8443

kind create cluster --name kind --config kind-config.yaml || kind get clusters | grep "^kind$"
[[ $(podman inspect kind-control-plane --format '{{.HostConfig.PidsLimit}}') -gt 3000 ]] || echo "PID limit of podman it too low. Increase it if you run into any errors"

kind export kubeconfig --name kind
coredns_redirect
for dir in "${DIRS[@]}"; do
    run_command mkdir -p "$dir"
    run_command chmod -R 777 "$dir"
done

TF_STAGE="bootstrap" make init
EXTRA_PARAMS="-auto-approve" TF_STAGE="bootstrap" make tf-apply-nologin

kubectl wait --for=create namespace/ingress-traefik-external --timeout=5m
kubectl -n ingress-traefik-external wait --for=create deployment/ingress-traefik-external --timeout=15m
kubectl -n ingress-traefik-external rollout status deployment/ingress-traefik-external --timeout=15m

kubectl wait --namespace ingress-traefik-external --for=jsonpath='{.status.loadBalancer.ingress[0].ip}' service/ingress-traefik-external --timeout=15m
INGRESS_IP=$(kubectl get svc -n ingress-traefik-external ingress-traefik-external -o json | jq -r '.status.loadBalancer.ingress[0].ip')

podman run --rm -d --replace \
  --name kind-metallb-proxy \
  --network=kind \
  -p 8443:8443 \
  alpine/socat TCP4-LISTEN:8443,fork,reuseaddr "TCP4:${INGRESS_IP}:443"

# Make sure the vault is live and initialized
kubectl -n openbao wait --for=create secret openbao-unsealer-secret --timeout=15m
kubectl -n openbao rollout restart deployment openbao-unsealer-vault-unsealer
kubectl -n openbao rollout status statefulset/openbao --timeout=15m
# Wait just in case
sleep 10
VAULT_TOKEN=$(kubectl -n openbao get secret openbao-unsealer-secret -o json | jq -r '.data.root_token' | base64 -d)
export VAULT_TOKEN
make init

# Apply basic stuff only
EXTRA_PARAMS="-auto-approve -target=vault_kv_secret_v2.secrets -target=vault_kubernetes_auth_backend_role.external-secrets -target=vault_policy.external-secrets -target=vault_kubernetes_auth_backend_config.example" make apply
# Restart the eso to force a reconcile
kubectl -n external-secrets rollout restart deployment external-secrets
# Make sure authelia lives for oidc
kubectl -n authelia rollout restart deployment authelia
kubectl -n authelia rollout status deployment authelia --timeout=15m

# Dex is stupid and just checks authelia on boot
kubectl -n argocd rollout restart deployment argocd-dex-server

EXTRA_PARAMS="-auto-approve" make apply
