MESSAGE="hello world!"
DESTINATION="10.0.2.15"
PORT=23192
CHECKSUM=$(echo -n $MESSAGE | md5sum | awk '{print$1}')

echo "Sending message"
echo "checksum : $CHECKSUM"
echo "Destination : $DESTINATION"
echo "Port: $PORT"

echo -n "$MESSAGE $CHECKSUM" | nc -q 0 $DESTINATION $PORT
