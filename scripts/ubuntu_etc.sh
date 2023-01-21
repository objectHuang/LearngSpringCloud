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
echo "------------------------------------------**** End installing ubuntu-desktop ****------------------------------------------"

echo "-----------------------------------------**** Begin installing IDEA ****----------------------------------------"
sudo apt install vim apt-transport-https curl wget software-properties-common -y
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