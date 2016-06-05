#!/bin/bash
# -*- coding: utf-8 -*-

whoami="$(whoami)"

apt="apt-get -q -y --force-yes"

if [ "$whoami" == "root" ]; then
	echo "You are root, all is right ;)"
	$apt install mysql-server mysql-client python2.7 python-setuptools python-simplejson python-imaging python-mysqldb python-flup nginx openssl

	useradd seafile -d /home/seafile --create-home
	su -c "bash setupseafile.sh" -m "seafile" 
	
	service nginx restart
	exit 0
elif [ "$whoami" == "seafile" ]; then
	echo "################You are seafile user, all is right ;)"
else
	echo "Please run this script as sudo or seafile user;)"
	exit 1
fi

cd "/home/seafile"

mkdir mycloud

cd mycloud

wget https://bintray.com/artifact/download/seafile-org/seafile/seafile-server_5.1.3_x86-64.tar.gz

tar -xvzf seafile-server_5.1.3_x86-64.tar.gz

cd seafile-server-5.1.3

./setup-seafile-mysql.sh



# END, now we can delete tmp files

# rm seafile-server_5.1.3_x86-64.tar.gz