#!/usr/bin/env sh
set -euo pipefail

# Description: Script to install all configurations for Github Codespaces

# Function to install git configuration
install_git_config() {
    echo "Installing git configuration..."
    cp .gitconfig ~/.gitconfig
    echo "git configuration installed."
}

install_git_ignore() {
    echo "Installing git ignore..."
    cp .gitignore_global ~/.gitignore_global
    echo "git ignore installed."
}

# Main installation function
main() {
    echo "Starting installation of configurations..."

    install_git_config
    install_git_ignore

    echo "All configurations installed successfully."
}

# Execute the main function
main