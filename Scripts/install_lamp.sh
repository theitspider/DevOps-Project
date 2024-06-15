#!/bin/bash

# Check for root privileges
if [ "$(id -u)" -ne 0 ]; then
  echo "This script must be run with root privileges." 1>&2
  exit 1
fi

# Update package repositories
apt update

# Install Apache web server
apt install -y apache2

# Install MariaDB server and configure
debconf-set-selections <<< "mariadb-server-10.5 mysql-server/root_password password [YOUR_PASSWORD_HERE]"
debconf-set-selections <<< "mariadb-server-10.5 mysql-server/root_password_again password [YOUR_PASSWORD_HERE]"
apt install -y mariadb-server

# Secure MariaDB installation
mysql_secure_installation <<EOF
y
[PASSWORD]
[PASSWORD]
y
y
y
y
EOF

# Install PHP and required modules
apt install -y php libapache2-mod-php php-mysql

# Restart Apache and MariaDB services
systemctl restart apache2
systemctl restart mariadb

echo "LAMP stack installation completed successfully."