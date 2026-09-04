#!/usr/bin/env bash
set -ex

export VAULT_SKIP_VERIFY=true
export VAULT_ADDR="https://vault.0--1.nip.io"
export TF_STAGE="kubernetes"
export CONFIG="test_minikube"

alias kubectl="kubectl --context minikube"


NODE_NUM=4

function run_command() {
    for ((i=2; i<=NODE_NUM; i++)); do
	minikube ssh -n "minikube-m0$i" -- sudo "$@"
    done
}

minikube start -n $NODE_NUM

run_command mkdir "/var/lib/postgres{1,2,3}"
kubectl taint nodes minikube node-role.kubernetes.io/control-plane:NoSchedule

TF_STAGE="bootstrap" make init
EXTRA_PARAMS="-auto-approve" TF_STAGE="bootstrap" make tf-apply-nologin

kubectl -n openbao wait --for=create secret openbao-unsealer-secret --timeout=15m
kubectl -n openbao rollout restart deployment openbao-unsealer-vault-unsealer
kubectl -n openbao rollout status statefulset/openbao --timeout=15m

sleep 10
VAULT_TOKEN=$(kubectl -n openbao get secret openbao-unsealer-secret -o json | jq -r '.data.root_token' | base64 -d)
export VAULT_TOKEN
make init
EXTRA_PARAMS="-auto-approve -target=vault_kv_secret_v2.secrets -target=vault_kubernetes_auth_backend_role.external-secrets -target=vault_policy.external-secrets -target=vault_kubernetes_auth_backend_config.example" make apply
# Restart the eso to force a reconcile
kubectl -n external-secrets rollout restart deployment external-secrets
# Make sure authelia lives for oidc
kubectl -n authelia rollout restart deployment authelia
kubectl -n authelia rollout status deployment authelia --timeout=15m
EXTRA_PARAMS="-auto-approve" make apply
