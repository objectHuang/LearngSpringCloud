#!/bin/bash
echo "---------------------------------------**** Begin installing Ubuntu, etc****-------------------------------------------------"

sudo apt update
sudo apt upgrade -y

echo "-----------------------------------------**** Begin installing ubuntu-desktop ****----------------------------------------"
sudo apt install ubuntu-desktop -y
echo "------------------------------------------**** End installing ubuntu-desktop ****------------------------------------------"

echo "-----------------------------------------**** Begin installing java ****------------------------------------------"
sudo apt install default-jre
sudo apt install default-jdk
echo "-------------------------------------------**** End installing java ****------------------------------------------"

echo "-----------------------------------------**** Begin installing IDEA ****----------------------------------------"
sudo apt install vim apt-transport-https curl wget software-properties-common -y
sudo add-apt-repository ppa:mmk2410/intellij-idea -y
sudo apt install intellij-idea-community -y
echo "------------------------------------------**** End installing IDEA ****-----------------------------------------"


echo "-----------------------------------------**** End installing Ubuntu, etc-------------------------------------------------------"