#!/bin/bash

# Define variables for the database
DB_NAME="MostafaDB"
DB_USER="mguellil"
DB_PASSWORD="Password92."

# Update package index
sudo apt-get update

# Install MySQL server
sudo apt-get install -y mysql-server

# Secure MySQL installation
sudo mysql_secure_installation <<EOF

y
n
y
y
y
y
EOF

# Log in to MySQL as root and create the database and user
sudo mysql -u root <<EOF
CREATE DATABASE IF NOT EXISTS ${DB_NAME};
CREATE USER IF NOT EXISTS '${DB_USER}'@'localhost' IDENTIFIED BY '${DB_PASSWORD}';
GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'localhost';
FLUSH PRIVILEGES;
EOF

echo "MySQL installation and database setup completed successfully."
echo "Database Name: ${DB_NAME}"
echo "Database User: ${DB_USER}"
echo "Database Password: ${DB_PASSWORD}"
