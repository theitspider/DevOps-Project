# Bash Automation Suite: System Setup & Network Diagnostics

## Description

This project comprises a collection of Bash scripts designed to automate essential server setups and perform comprehensive network diagnostics on Linux systems. Each script addresses specific tasks, from setting up server environments like LAMP and Docker to diagnosing network configurations and statuses. The aim is to streamline system administration processes, reduce manual errors, and ensure consistent setups across different systems. These scripts are particularly useful for system administrators and developers who need efficient server and network management tools.

## Network Diagnostics

This script provides a comprehensive diagnostic of the network configuration and status on a system. It displays the current network interfaces, routing table, DNS configuration, and active network connections. Additionally, it shows the ARP cache, performs a ping test and traceroute to www.google.com, checks the status of the firewall (ufw), and provides the status of the Network Manager. Lastly, it displays the current network usage using `iftop`.

[network_status.sh](Scripts/network_status.sh)

## LAMP Stack Installation

This script automates the setup of a LAMP (Linux, Apache, MySQL/MariaDB, PHP) stack on a Debian-based system. It begins by checking for root privileges, updating the package repositories, installing the Apache web server, and configuring MariaDB with a specified root password. It secures the MariaDB installation, installs PHP and necessary modules, and restarts the Apache and MariaDB services to apply the changes. The script concludes by confirming the successful installation of the LAMP stack.

![Installing LAMP via the Selection Menu](<Bash Automation Suite System Setup & Network Diagnostics/Bash Automation Suite System Setup & Network Diagnostics - Installing LAMP via the Selection Menu.PNG>)<br>
[install_lamp.sh](Scripts/install_lamp.sh)

## Docker Installation

This script automates the installation of Docker on an Ubuntu system. It updates the package index, installs required packages for repository access over HTTPS, adds Docker’s official GPG key, sets up the stable Docker repository, and installs Docker Engine and containerd. After installation, it verifies functionality by running the `hello-world` image. The script optionally adds the current user to the Docker group to facilitate command execution without sudo.

![Docker Installation via the Selection Menu](<Bash Automation Suite System Setup & Network Diagnostics/Bash Automation Suite System Setup & Network Diagnostics - Docker Installation via the Selection Menu.PNG>)<br>
[install_docker.sh](Scripts/install_docker.sh)

## MySQL Database Setup

This script installs and secures MySQL server, then creates a specified database and user with designated credentials. It begins by updating the package index and installing MySQL server. After securing the MySQL installation, it logs into MySQL as root to create the database, user, and assign necessary privileges. The script concludes by displaying the database name, user, and password for reference.

![MySQL Database Setup](<Bash Automation Suite System Setup & Network Diagnostics/Bash Automation Suite System Setup & Network Diagnostics - DataBase Setup.PNG>)<br>
[setup_mysql.sh](Scripts/setup_mysql.sh)

## Docker Environment Setup

This script sets up a complete Docker environment, including Docker Engine and Docker Compose, on an Ubuntu system. It defines functions to update the package index, install required dependencies, install Docker, install Docker Compose, add the current user to the Docker group, and display the versions of Docker and Docker Compose. The script executes these functions sequentially, ensuring a robust Docker setup and concludes with a confirmation message.

![Managing Dependencies](<Bash Automation Suite System Setup & Network Diagnostics/Bash Automation Suite System Setup & Network Diagnostics - Managing Dependencies.PNG>)<br>
[manage_docker_dependencies.sh](Scripts/manage_docker_dependencies.sh)

## Main Menu Script

The menu script automates critical system administration tasks on Linux servers through a user-friendly interface. It allows users to select options for network diagnostics, LAMP stack installation, Docker setup, MySQL database configuration, and Docker dependency management. Each option triggers a corresponding Bash script, stored in a specified directory, to streamline tasks such as network monitoring, server environment setup, and container management. This simplifies operations, boosts efficiency, and ensures consistent and reliable system configurations across different Linux distributions, benefiting administrators and developers by reducing manual effort and potential errors in server management processes.

![Selection Menu](<Bash Automation Suite System Setup & Network Diagnostics/Bash Automation Suite System Setup & Network Diagnostics - Selection Menu.png>)<br>
[Selection Menu](Scripts/menu_select.sh)

## Conclusion

This project offers a versatile suite of Bash scripts for automating server environment setup and network diagnostics on Linux systems. By automating these tasks, the scripts ensure consistency, reduce errors, and save considerable time for administrators. They cover essential functions such as network diagnostics, LAMP stack installation, Docker setup, MySQL database configuration, and Docker environment management. Whether for initial deployment or ongoing maintenance, these scripts enhance the efficiency and reliability of managing Linux servers.