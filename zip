#!/bin/bash
rpm -e --nodeps libzip-devel  libzip
wget https://nih.at/libzip/libzip-1.2.0.tar.gz
tar -zxvf libzip-1.2.0.tar.gz
cd libzip-1.2.0
./configure
make && make install
echo '/usr/local/lib64
/usr/local/lib
/usr/lib
/usr/lib64'>>/etc/ld.so.conf
ldconfig -v
pecl install zip
cp /usr/local/lib/libzip/include/zipconf.h /usr/local/include/zipconf.h
pecl install zip
echo 'extension=zip.so' >> /etc/php.ini

mkdir /var/www/html/crm -p
cd /var/www/html