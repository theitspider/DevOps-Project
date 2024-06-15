#!/bin/bash

# Function to update the package index and install necessary dependencies
install_dependencies() {
    echo "Updating package index and installing dependencies..."
    sudo apt-get update
    sudo apt-get install -y \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg \
        lsb-release
    echo "Dependencies installed."
}

# Function to install Docker
install_docker() {
    echo "Installing Docker..."
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
    echo \
        "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt-get update
    sudo apt-get install -y docker-ce docker-ce-cli containerd.io
    echo "Docker installed."
}

# Function to install Docker Compose
install_docker_compose() {
    echo "Installing Docker Compose..."
    sudo curl -L "https://github.com/docker/compose/releases/download/$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep tag_name | cut -d '"' -f 4)/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    echo "Docker Compose installed."
}

# Function to add the current user to the Docker group
add_user_to_docker_group() {
    echo "Adding user to the Docker group..."
    sudo usermod -aG docker $USER
    echo "User added to the Docker group. You may need to log out and back in for changes to take effect."
}

# Function to display Docker and Docker Compose versions
display_versions() {
    echo "Displaying Docker and Docker Compose versions..."
    docker --version
    docker-compose --version
}

# Main script execution
install_dependencies
install_docker
install_docker_compose
add_user_to_docker_group
display_versions

echo "Docker environment setup completed successfully."
