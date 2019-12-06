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

#--Set date and start
echo -e "\n$(date "+%d-%m-%Y --- %T") --- Starting work\n" >> IniReport.txt

#--Install Primary Independant Packages
sudo apt-get update
sudo apt-get install -y git
sudo apt-get install -y gparted
sudo apt-get install -y python-pip
sudo apt-get install -y nano
sudo apt-get install -y gimp
sudo apt-get install -y thunderbird
sudo apt-get install -y vlc
sudo apt-get install -y inkscape
sudo apt-get install -y gnome-screenshot
sudo apt-get install -y gtk-recordmydesktop
sudo apt-get install -y taskwarrior

#--Install Primary Dependant Packages
#-----Deluge
sudo apt-get install -y deluged
deluge-console python-mako
deluge-web
#-----Spotify
sudo apt-add-repository -y "deb http://repository.spotify.com stable non-free" 
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59 
sudo apt-get install -y spotify-client -y --allow-unauthenticated
#-----Audacity
sudo add-apt-repository ppa:audacity-team/daily
sudo apt-get install -y audacity
#-----Pidgin
sudo add-apt-repository ppa:kip/pidgin
sudo apt-get install -y pidgin
#-----LibreOffice
sudo add-apt-repository ppa:libreoffice/ppa
sudo apt dist-upgrade
sudo apt-get install -y libreoffice-gtk2 libreoffice-gnome
#-----Brackets
sudo add-apt-repository ppa:webupd8team/brackets
sudo apt-get install -y brackets
#-----Openshot
sudo add-apt-repository ppa:openshot.developers/ppa
sudo apt-get install -y openshot-qt
#-----Rhythmbox
sudo add-apt-repository ppa:fossfreedom/rhythmbox
sudo apt-get install -y rhythmbox

#-----Imagemagick
sudo apt-get install -y php php-common gcc
sudo apt-get install -y imagemagick
sudo apt-get install -y php-imagick
sudo systemctl restart apache2

#-----Cups
#--Visit URL for CUPS
# https://localhost:631
sudo apt-get -y install cups
sudo usermod -a -G lpadmin pi

#-----FinalUpdate
sudo apt-get update
#--Clean All Installs
apt --fix-broken install
apt-get -y autoremove
apt-get autoclean

#--Terminate Script
echo -e "\n$(date "+%T") \t Script Terminated" >> IniReport.txt
