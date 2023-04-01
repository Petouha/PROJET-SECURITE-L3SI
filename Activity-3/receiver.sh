PORT=23192

echo "waiting for incoming message on port $PORT.."
MESSAGE=$(nc -l $PORT)
echo "received message $MESSAGE"

MESSAGE=$(echo $MESSAGE | cut -d ' ' -f 1)
CHECKSUM=$(echo $MESSAGE | cut -d ' ' -f 2)
CALCULATED_CHECKSUM=$(echo -n $($echo $MESSAGE | cut -d ' ' -f 1) | md5sum | awk '{print$1}')

if [ "$CHECKSUM" = "$CALCULATED_CHECKSUM"]; then
echo "Message integrity check successful"
else
echo "Message integrity check failed"
fi
