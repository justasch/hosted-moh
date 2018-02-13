
#!/bin/bash

CUSTOMER=logans
STREAM_DIR=/home/ubuntu/channels/${CUSTOMER}/streams

# here is the stream we have setup
/usr/bin/ezstream -c ${STREAM_DIR}/logans.xml & 2>&1

# add other streams/channels for this customer in the same way
# /usr/bin/ezstream -c ${STREAM_DIR}/logans-other-channel.xml & 2>&1