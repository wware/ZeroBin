#!/bin/bash

if (( $# < 1 ))
then
	SERVERIMAGE=wware/zerobin
fi

CONTAINER=$(docker run -d -t $SERVERIMAGE)
IPADDR=$(docker inspect ${CONTAINER} | grep IPAddress | head -1 | sed 's/^.*: "//' | sed 's/",//')
echo http://${IPADDR}/ZeroBin/index.php
