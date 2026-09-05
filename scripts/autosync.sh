#!/usr/bin/env bash
set -e

AUTOSYNC_DESCRIPTION="disable_autosync"

function get_sync_windows() {
    NAME=$1
    kubectl -n argocd get appprojects.argoproj.io "$NAME" -o json | jq -r ".spec.syncWindows // [] | del(.[] | select(.description == \"$AUTOSYNC_DESCRIPTION\"))"
}

function patch_app() {
    NAME=$1
    SYNC_WINDOW=$2
    kubectl -n argocd patch appproject "$NAME" --type='json' -p "[{\"op\": \"replace\", \"path\": \"/spec/syncWindows\", \"value\": $SYNC_WINDOW}]"
}

function disable_autosync() {
    NAME=$1
    DISABLE_WINDOW=$(cat << EOF
    {
        "applications": [
          "*"
        ],
        "duration": "30m",
        "kind": "deny",
        "manualSync": true,
        "schedule": "* * * * *",
        "timeZone": "Europe/Berlin",
        "description": "$AUTOSYNC_DESCRIPTION"
      }
EOF
    )
    SYNC_WINDOW=$(get_sync_windows "$NAME" | jq ". += [$DISABLE_WINDOW]")
    patch_app "$NAME" "$SYNC_WINDOW"
}

function enable_autosync() {
    NAME=$1
    SYNC_WINDOW=$(get_sync_windows "$NAME")
    patch_app "$NAME" "$SYNC_WINDOW"
}

VERB=$1

readarray -t APPS_TO_DISABLE < <(kubectl -n argocd get appproject -o json | jq -r '.items[].metadata.name')

if [ "$VERB" == "enable" ]; then
    for app in "${APPS_TO_DISABLE[@]}"; do
        enable_autosync "$app"
    done
elif [ "$VERB" == "disable" ]; then
    for app in "${APPS_TO_DISABLE[@]}"; do
        disable_autosync "$app"
    done
else
    echo "Unsupported parameter!"
    exit 1
fi
