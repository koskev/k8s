#!/usr/bin/env bash

set -e

SCRIPT_DIR=$(dirname "$0")
cd "$SCRIPT_DIR/.."

STAGES=("bootstrap" "kubernetes")

for stage in "${STAGES[@]}"; do
    for config in argocd/clusters/*; do
	EXTRA_PARAMS="-upgrade" TF_STAGE="$stage" CONFIG="$(basename "$config")" make build tf-init
    done
done
