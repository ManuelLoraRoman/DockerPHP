#!/bin/bash

sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf
apache2ctl -D FOREGROUND
