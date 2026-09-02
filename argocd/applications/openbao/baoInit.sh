export BAO_ADDR=http://openbao:8200

BAO_STATUS=""
until echo "$BAO_STATUS" | grep "Initialized"; do
	echo "Waiting for openbao to start..."
	sleep 5
	BAO_STATUS=$(bao status)
done

echo "Bao status: ${BAO_STATUS}"

if echo "$BAO_STATUS" | grep -q "Initialized.*false"; then
	echo "Initialising OpenBao..."
	bao operator init -key-shares=5 -key-threshold=3 \
		-format=json > /shared/init.json
	echo "Init complete; init.json written to shared volume."
else
	echo "OpenBao already initialised (skipping init)."
fi
