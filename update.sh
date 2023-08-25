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
file_path="/var/www/html/admin/libraries/issabelpbx_DB.php"
line_number=3
# Backup the original file
cp "$file_path" "$file_path.bak"
# Replace the function keyword with static function
sed -i "${line_number}s/function/static function/" "$file_path"

echo "Function in line $line_number has been changed to static function."
echo "Backup file created at $file_path.bak"

file_path2="/usr/share/php/jpgraph/jpgraph.php"
start_pattern="Make sure PHP version is high enough"
end_pattern="die();"

# Backup the original file
cp "$file_path2" "$file_path2.bak"

# Comment out the lines between the start and end patterns, excluding the closing curly brace
sed -i "/$start_pattern/,/$end_pattern/ { /$end_pattern/! s/^/\/\// }" "$file_path2"

echo "Block of code has been commented out in $file_path2"
echo "Backup file created at $file_path2.bak"