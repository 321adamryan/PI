#!/bin/bash

# :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#       filename: exe.sh
#          coder: AdamRyan
#        program: RaspberryPi Linux/Ubuntuu
#    description: This is a script to automate the Execution of Linux based RPi files
#      extention: SH
#       licensce: OpenSource
#        website: adamryan.info
#
# :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


#------------------------------------------
#To Retrieve/Run Script, in Terminal Type:
# apt-get install wget
# wget https://raw.githubusercontent.com/lazryn/PI/master/exe.sh
# chmod +x exe.sh
# ./exe.sh
#------------------------------------------

#Ask the user for Filename
echo What is the Filename as shown, NO extention!
read fname

chmod +x $fname.sh
./$fname.sh