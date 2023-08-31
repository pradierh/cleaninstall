#!/bin/bash

# Update package lists
sudo apt update -y
sudo apt upgrade -y

# Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt -f install -y
echo "Google Chrome installed"

# Install Snapd
sudo apt install snapd -y
echo "Snapd installed"

# Install Discord via Snap
sudo snap install discord
echo "Discord installed"

# Install Visual Studio Code via Snap
sudo snap install code --classic
echo "Visual Studio Code installed"

# Install Mailspring via Snap
sudo snap install mailspring
echo "Mailspring installed"

# Install Terminator
sudo apt install terminator -y
echo "Terminator installed"

# Install WhatsApp for Linux via Snap
sudo snap install whatsapp-for-linux
echo "WhatsApp for Linux installed"

# Install Postman via Snap
sudo snap install postman
echo "Postman installed"

# Install qBittorrent
sudo apt install qbittorrent -y
echo "qBittorrent installed"

# Install Fonts
cp *.ttf ./fonts  # If the font files are in TTF format
cp *.otf ./fonts  # If the font files are in OTF format
fc-cache -f -v
echo "Fonts installed"

# Install Python latest version
sudo apt install python3 -y
echo "Python installed"

# Install pip
sudo apt install python3-pip -y
echo "pip installed"

# Install curl
sudo apt install curl -y
echo "curl installed"

# Install Git
sudo apt install git -y
echo "Git installed"

# Install ubuntu-restricted-extras
sudo apt install ubuntu-restricted-extras -y
echo "ubuntu-restricted-extras installed"

# Install gnome-tweaks
sudo apt install gnome-tweaks -y
echo "gnome-tweaks installed"

# Install chrome-gnome-shell
sudo apt install chrome-gnome-shell -y
echo "chrome-gnome-shell installed"

# Install VLC
sudo apt install vlc -y
echo "VLC installed"

# Remove totem
sudo apt remove totem -y
echo "totem removed"

# Install flatpak
sudo apt install flatpak -y
echo "flatpak installed"

# Add Flathub repository
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
echo "Flathub repository added"

flatpak install flathub org.gimp.GIMP -y
echo "GIMP installed"

# Install PowerLevel10K
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
echo "PowerLevel10K installed"

# Install JAVA
sudo apt install default-jdk -y
echo "Java installed"

# Cleanup
rm google-chrome-stable_current_amd64.deb

# Build-essential
sudo apt install build-essential -y
echo "build essentials installed"

# Install ruby
sudo snap install ruby --classic -y
echo "Ruby installed"

# Install ZSH
sudo apt install zsh -y
echo "ZSH installed"

# Install Oh my ZSH 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Oh my zsh installed"
# Install gcc
sudo apt install gcc -y
echo "gcc installed"

# Install Notion
sudo snap install Notion-Snap-Reborn
echo "Notion installed"

# Install intellij 
sudo snap install intellij-idea-community --classic
echo "IntelliJ installed"

# Install popcorn time 
sudo apt update && sudo apt install libatomic1 libgconf-2-4 libcanberra-gtk-module -y
echo "Popcorn Time installed"

echo "Software installation complete!"
