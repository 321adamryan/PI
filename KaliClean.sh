  
#!/bin/bash

# :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#       filename: KaliClean.sh
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
# wget https://raw.githubusercontent.com/lazryn/PI/master/KaliClean.sh
# chmod +x KaliClean.sh
# ./KaliClean.sh
#------------------------------------------

sudo apt-get purge --auto-remove -y dnsrecon
sudo apt-get purge --auto-remove -y nmap
sudo apt-get purge --auto-remove -y theharvester
sudo apt-get purge --auto-remove -y recon-ng
sudo apt-get purge --auto-remove -y wpscan
sudo apt-get purge --auto-remove -y wfuzz
sudo apt-get purge --auto-remove -y sqlmap
sudo apt-get purge --auto-remove -y hydra
sudo apt-get purge --auto-remove -y curl
sudo apt-get purge --auto-remove -y smbclient
sudo apt-get purge --auto-remove -y sqsh
sudo apt-get purge --auto-remove -y winexe
sudo apt-get purge --auto-remove -y cewl
sudo apt-get purge --auto-remove -y crunch
sudo apt-get purge --auto-remove -y john
sudo apt-get purge --auto-remove -y medusa
sudo apt-get purge --auto-remove -y ncrack
sudo apt-get purge --auto-remove -y mfoc
sudo apt-get purge --auto-remove -y libnfc-bin
sudo apt-get purge --auto-remove -y libnfc5:armhf
#mfc-mfclassic
sudo apt-get purge --auto-remove -y aircrack-ng
sudo apt-get purge --auto-remove -y nasm
sudo apt-get purge --auto-remove -y metasploit-framework
#searchsploit
sudo apt-get purge --auto-remove -y wireshark
sudo apt-get purge --auto-remove -y wireshark-common

sudo apt-get purge --auto-remove -y proxychains


