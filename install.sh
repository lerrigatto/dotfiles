#!/usr/bin/env sh

set -x

# Description: Script to install all configurations for Github Codespaces

# Function to install kubectx and kubens
install_kubectx_kubens() {
    echo "Installing kubectx and kubens..."
    sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
    sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
    sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens
    echo "kubectx and kubens installed."
}

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

# Function to install fish configuration
install_fish_config() {
    echo "Installing fish configuration..."
    mkdir ~/.config/fish
    curl -L https://get.oh-my.fish | fish
    curl -fsSL https://starship.rs/install.sh | bash
    cp -arv .config/fish/* ~/.config/fish
    echo "fish configuration installed."
}

# Main installation function
main() {
    echo "Starting installation of configurations..."

    install_git_config
    install_git_ignore
    install_kubectx_kubens
    install_fish_config


    echo "All configurations installed successfully."
}

# Execute the main function
main