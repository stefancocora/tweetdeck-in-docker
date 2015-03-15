#!/bin/bash

if [ -f /.root_pw_set ]; then
	echo "Root password already set!"
	exit 0
fi

#adduser --disabled-password --gecos "" dockerx 
#adduser dockerx sudo
DPASS='docker.io'

echo "=> Setting a password to the docker user"
echo "tweetdeck:$DPASS" | chpasswd


echo "=> Done!"
touch /.root_pw_set

echo "========================================================================"
echo "You can now connect to this Ubuntu container via SSH using:"
echo ""
echo "    ssh -p <port> tweetdeck@<host>"
echo "and enter the tweetdeck password '$DPASS' when prompted"
echo ""
echo "use this same password also to connect to the x2go server from your x2go client!"
echo "Please remember to change the above password as soon as possible if your container is long-lived!"
echo "========================================================================"
