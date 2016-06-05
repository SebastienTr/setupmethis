#!/bin/bash
# -*- coding: utf-8 -*-

start_time=`date +%s`


apt="apt-get -q -y --force-yes"


$apt install monit
sed -i -e "s/cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g" /etc/php5/fpm/php.ini