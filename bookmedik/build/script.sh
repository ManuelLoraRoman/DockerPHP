#!/bin/bash

sed -i "s/$this->user=\"root\";/$this->user=\"$USER\";/g" /var/www/html/core/controller/Database.php
sed -i "s/$this->pass=\"\";/$this->pass=\"$PASSWORD\";/g" /var/www/html/core/controller/Database.php
sed -i "s/$this->host=\"localhost\";/$this->host=\"$HOST\";/g" /var/www/html/core/controller/Database.php
sed -i "s/$this->ddbb=\"bookmedik\";/$this->ddbb=\"$DB\";/g" /var/www/html/core/controller/Database.php

apache2ctl -D FOREGROUND
