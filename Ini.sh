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
# apt-get install wget
# wget https://raw.githubusercontent.com/lazryn/PI/master/Ini.sh
# chmod +x Ini.sh
# ./Ini.sh
#------------------------------------------

#--Set date and start
echo -e "\n$(date "+%d-%m-%Y --- %T") --- Starting work\n"

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
sudo apt-get install deluged
deluge-console python-mako
deluge-web
#-----Spotify
sudo apt-add-repository -y "deb http://repository.spotify.com stable non-free" &&
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59 &&
sudo apt-get update &&
sudo apt-get install spotify-client -y --allow-unauthenticated
#-----Audacity
sudo add-apt-repository ppa:audacity-team/daily
sudo apt-get update
sudo apt-get install -y audacity
#-----Pidgin
sudo add-apt-repository ppa:kip/pidgin
sudo apt-get install pidgin
#-----LibreOffice
sudo add-apt-repository ppa:libreoffice/ppa
sudo apt update; sudo apt dist-upgrade
sudo apt install libreoffice-gtk2 libreoffice-gnome
#-----Brackets
sudo add-apt-repository ppa:webupd8team/brackets
sudo apt-get update
sudo apt-get install brackets
#-----Openshot
sudo add-apt-repository ppa:openshot.developers/ppa
sudo apt update
sudo apt install openshot-qt
#-----Rhythmbox
sudo add-apt-repository ppa:fossfreedom/rhythmbox
sudo apt-get update
sudo apt-get install rhythmbox

#--Clean All Installs
apt --fix-broken install
apt-get -y autoremove
apt-get autoclean

#--Terminate Script
echo -e "\n$(date "+%T") \t Script Terminated"