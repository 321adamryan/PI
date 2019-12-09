  
#!/bin/bash

# :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#       filename: Ini.sh
#          coder: AdamRyan
#        program: RaspberryPi Linux/Ubuntuu
#    description: This is a script to automate the installation of software for RPi
#      extention: SH
#       licensce: OpenSource
#        website: adamryan.info
#
# :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


#------------------------------------------
#To Retrieve/Run Script, in Terminal Type:
# sudo apt-get update
# apt-get install wget
# wget https://raw.githubusercontent.com/lazryn/PI/master/Ini.sh
# chmod +x Ini.sh
# ./Ini.sh
#------------------------------------------

sudo apt-get purge --auto-remove dnsrecon
sudo apt-get purge --auto-remove nmap
sudo apt-get purge --auto-remove theharvester
sudo apt-get purge --auto-remove recon-ng
sudo apt-get purge --auto-remove wpscan
sudo apt-get purge --auto-remove wfuzz
sudo apt-get purge --auto-remove sqlmap
sudo apt-get purge --auto-remove hydra
sudo apt-get purge --auto-remove curl
#pth-net
#pth-openchangeclient
#pth-rpcclient
sudo apt-get purge --auto-remove smbclient
sudo apt-get purge --auto-remove sqsh
sudo apt-get purge --auto-remove winexe
#pth-wmic
#pth-wmis
sudo apt-get purge --auto-remove cewl
sudo apt-get purge --auto-remove crunch
sudo apt-get purge --auto-remove john
sudo apt-get purge --auto-remove medusa
sudo apt-get purge --auto-remove ncrack
sudo apt-get purge --auto-remove mfoc
#nfc-list
#mfc-mfclassic
sudo apt-get purge --auto-remove aircrack-ng
sudo apt-get purge --auto-remove nasm
sudo apt-get purge --auto-remove metasploit-framework
#searchsploit
sudo apt-get purge --auto-remove wireshark
sudo apt-get purge --auto-remove proxy chains


