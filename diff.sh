#!/usr/bin/env bash

OTHER_BRANCH=$1

#DIFF_FILES=$(git diff --name-only "${OTHER_BRANCH}" | grep "sonnet")
DIFF_FILES=$(find ./argocd -iname "*.jsonnet")

TMP_DIR=$(mktemp -d)

function compile() {
    jsonnet -J . -J lib "$1"
}

git clone "file://$(pwd)" "$TMP_DIR" -b "$OTHER_BRANCH" > /dev/null 2>&1

for file in $DIFF_FILES; do
    difft <(compile "$file") <(compile "$TMP_DIR/$file") --skip-unchanged
done

rm -rf "${TMP_DIR}"
