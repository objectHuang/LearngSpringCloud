#!/bin/bash
echo "---------------------------------------**** Begin installing Ubuntu, etc****-------------------------------------------------"

sudo apt update
sudo apt upgrade -y

echo "-----------------------------------------**** Begin installing java ****------------------------------------------"
sudo apt install default-jre -y
sudo apt install default-jdk -y
echo "-------------------------------------------**** End installing java ****------------------------------------------"

echo "-----------------------------------------**** Begin installing ubuntu-desktop ****----------------------------------------"
sudo apt install ubuntu-desktop -y
sudo apt-get remove --purge libreoffice* -y
sudo apt purge --autoremove gnome-games -y
sudo apt clean -y
echo "------------------------------------------**** End installing ubuntu-desktop ****------------------------------------------"

echo "-----------------------------------------**** Begin installing visual code ****----------------------------------------"
#Install the apt repository and signing key to enable auto-updating using the system's package manager
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

#Update the package cache and install the package
sudo apt install apt-transport-https
sudo apt update
sudo apt install code
echo "------------------------------------------**** End installing visual code ****------------------------------------------"


echo "-----------------------------------------**** Begin installing IDEA ****----------------------------------------"
sudo apt install vim curl wget software-properties-common -y
sudo add-apt-repository ppa:mmk2410/intellij-idea -y
sudo apt install intellij-idea-community -y
echo "------------------------------------------**** End installing IDEA ****-----------------------------------------"

echo "----------------------------------------**** Begin updating ubuntu desktop setting ****----------------------------------"
sudo systemctl isolate graphical
sudo apt install dconf-editor -y
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 36

echo "----------------------------------------**** End updating ubuntu desktop setting ****----------------------------------"

echo "-----------------------------------------**** End installing Ubuntu, etc ****---------------------------------------------------"