#!/bin/bash
yum -y install yum-utils nano tmux libzip libzip-devel php-devel php-common
yum -y install https://rpms.remirepo.net/enterprise/remi-release-7.rpm
yum -y update 
yum -y --enablerepo=remi-php74 update
systemctl restart httpd
yum -y --enablerepo=issabel-beta update issabel\*
yum -y install php74-php-pear.noarch
php74-pear install DB
rm -rf /usr/share/pear
ln -s /opt/remi/php74/root/usr/share/pear /usr/share/pear
wget https://downloads.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz
tar -xvzf ioncube_loaders_lin_x86-64.tar.gz
cp ioncube/ioncube_loader_lin_7.4.so /usr/lib64/php/modules/
echo 'zend_extension=ioncube_loader_lin_7.4.so' > /etc/php.d/00-ioncube-loader.ini
echo 'zend_extension=ioncube_loader_lin_7.4.so' > /etc/php.d/00-ioncube.ini
systemctl restart httpd
clear
echo "change func to static func in line 3"
sleep 10
nano /var/www/html/admin/libraries/issabelpbx_DB.php
echo "find !CheckPHPVersion and comment if "
sleep 10
nano /usr/share/php/jpgraph/jpgraph.php