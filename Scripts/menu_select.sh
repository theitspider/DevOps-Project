#!/bin/bash

# Directory where the individual scripts are stored
SCRIPTS_DIR="/home/ubuntu/Dev/Scripts"

# Check if the scripts directory exists
if [[ ! -d "$SCRIPTS_DIR" ]]; then
    echo "Scripts directory not found: $SCRIPTS_DIR"
    exit 1
fi

# Main menu function
main_menu() {
    echo "Select an option:"
    echo "1 - Network Status"
    echo "2 - LAMP Installation"
    echo "3 - Docker Installation"
    echo "4 - MySQL Database Setup"
    echo "5 - Manage Docker Dependencies"
    echo "6 - Exit"

    read -p "Enter your choice [1-6]: " choice

    case $choice in
        1) bash "$SCRIPTS_DIR/network_status.sh" ;;
        2) bash "$SCRIPTS_DIR/lamp_installation.sh" ;;
        3) bash "$SCRIPTS_DIR/docker_installation.sh" ;;
        4) bash "$SCRIPTS_DIR/mysql_database_setup.sh" ;;
        5) bash "$SCRIPTS_DIR/manage_docker_dependencies.sh" ;;
        6) exit 0 ;;
        *) echo "Invalid option!" ;;
    esac
}

# Loop to display the menu until the user chooses to exit
while true; do
    main_menu
done
