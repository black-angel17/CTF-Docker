#!/bin/bash

/var/labsdata/flag.sh
chown floki:floki /home/vyasa/user.txt

chown -R root:root /var/labsdata/*
chmod -R 700 /var/labsdata/
cp /var/labsdata/ssh-key/* /home/floki/.ssh/
cp /var/labsdata/ssh-key/id_rsa.pub /home/floki/.ssh/authorized_keys

chown -R floki:floki /home/floki/.ssh
chmod 700 /home/floki/.ssh
chmpd 600 /home/floki/.ssh/*
rm -r /var/labsdata* 

node /home/floki/app/server.js &
/usr/sbin/sshd -D