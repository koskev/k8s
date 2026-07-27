export BAO_ADDR=http://openbao:8200
until bao status | grep "Initialized"; do
	echo "Waiting for openbao to start..."
	sleep 5
done

if bao status | grep -q "Initialized.*false"; then
	echo "Initialising OpenBao..."
	bao operator init -key-shares=5 -key-threshold=3 \
		-format=json > /shared/init.json
	echo "Init complete; init.json written to shared volume."
else
	echo "OpenBao already initialised (skipping init)."
fi
