#!/bin/bash
if [ ! -f /.root_pw_set ]; then
	/set_user_pw.sh
fi

exec /usr/sbin/sshd -D
