#!/usr/bin/env bash
function get_children() {
    NAME=$1
    kubectl -n argocd get applications "$NAME" -o json | jq -rc '.status.resources.[] | select(.kind == "Application" and .name != "root") | .name'
}

function disable_autosync() {
    NAME=$1
    kubectl -n argocd patch application "$NAME" \
	-n argocd \
	--type='merge' \
	-p='{"spec": {"syncPolicy": {"automated": {"enabled": false}}}}'
}


APPS_TO_DISABLE=("root")

while [ ${#APPS_TO_DISABLE[@]} -gt 0 ]; do
    current_app="${APPS_TO_DISABLE[0]}"
    APPS_TO_DISABLE=("${APPS_TO_DISABLE[@]:1}")
    children=$(get_children "$current_app")
    readarray -t children_array < <(grep '[^[:space:]]' <<< "$children")
    if [ ${#children_array[@]} -gt 0 ]; then
	APPS_TO_DISABLE+=("${children_array[@]}")
    fi

    disable_autosync "$current_app"
done
