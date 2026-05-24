if [ -z "$1" ]; then exit 1; fi

AUTHELIA_OUTPUT=$(authelia crypto hash generate pbkdf2 --random)
PASSWORD=$(echo "$AUTHELIA_OUTPUT" | head -n1 | cut -d':' -f2-)
# We need to cut the $pbkdf2-sha512$ since the helm chart can't just use env substation or else it fails
DIGEST=$(echo "$AUTHELIA_OUTPUT" | tail -n1 | cut -d':' -f2- | cut -d'$' -f3-)

pushd tf || exit 1

DIR="./openbao/openbao_secrets/oidc"
TARGET_FILE="$DIR/$1.enc.yaml"

if [ -f "${TARGET_FILE}" ]; then
    echo "Target file ${TARGET_FILE} already exists"
    exit 0
fi

mkdir -p $DIR

printf "password: %s\ndigest: %s" "$PASSWORD" "$DIGEST" | sops --encrypt --input-type yaml /dev/stdin > "$TARGET_FILE"

popd || exit 1
