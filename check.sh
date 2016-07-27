#!bin/bash

# ----------------------
# About Script
# ----------------------

#Author:Asman Mirza aka Dark Legend.
#https://facebook.com/asman.mirza.3
#Free to Modify.
#Created Just for Fun and Timepass.
n4m3="Information Grabber" # version codename display
ver="2.0" # script version display


#+++++++++++++General Information+++++++++++++++++
function geninfo {
clear

select menusel in "View Information" "Back to Main"; do
case $menusel in

                   "View Information" )
                     user=`who | cut -d' ' -f1 | sort | uniq` # grab username
                     DiStR0=`awk '{print $1}' /etc/issue` # grab distribution
                     Kernal=`uname -s`
                     Kernal_ver=`uname -v`
                     H0m3=`echo ~` # grab home path
                     IPATH=`pwd` # grab current path (home/username/script)
                     OS=`uname` # grab OS

                     echo "+--+ OS:$OS"
                     echo "+--+ USER:$user"
                     echo "+--+ INTERFACE:$InT3R"
                     echo "+--+ DISTRO:$DiStR0"
                     echo "+--+ HOME Path:$H0m3"
                     echo "+--+ IN Path:$IPATH"
                     echo "+--+ Kernal:$Kernal $Kernal_ver"
                                        ;;

	*)


esac

break

done
}

#+++++++++++++Network Information+++++++++++++++++
function netinfo {
clear

select menusel in "View Information" "Back to Main"; do
case $menusel in

                       "View Information" )
                           net=`netstat -antup` #Network Information Grabber
                           echo "$net" ;;

                       "Back to Main")
		clear
		mainmenu ;;
		
	*)


esac

break

done
}
#+++++++++++++CPU Information+++++++++++++++++
function cpuinfo {
clear

select menusel in "View Information" "Back to Main"; do
case $menusel in

                       "View Information" )
                           net=`lscpu` #CPU Information
                           echo "$net" ;;

                       "Back to Main")
		clear
		mainmenu ;;
		
	*)


esac

break

done
}

#+++++++++++++Hardware Information+++++++++++++++++
function hwinfo {
clear

select menusel in "View Information" "Back to Main"; do
case $menusel in

                       "View Information" )
                           hw=`lshw` #Hardware Information
                           echo "$hw" ;;

                       "Back to Main")
		clear
		mainmenu ;;
		
	*)


esac

break

done
}




#+++++++++++++USB Information+++++++++++++++++

function usbinfo {
clear

select menusel in "View Information" "Back to Main"; do
case $menusel in

                       "View Information" )
                           usb=`lsusb` #CPU Information
                           echo "$usb" ;;

                       "Back to Main")
		clear
		mainmenu ;;
		
	*)


esac

break

done
}



function mainmenu {
echo "
                   +-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+-+-+
                   |S|y|s|t|e|m| |I|n|f|o|r|m|a|t|i|o|n|
                   +-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+-+-+
                               $n4m3 $ver
"
echo -e "\033[33m***Run as super-user(eg: sudo bash check.sh)\033[m"
echo -e "\033[33m***Author: Dark Legend\033[m"
echo -e "\033[30m*Facebook:https://facebook.com/asman.mirza.3\033[m"

select menusel in  "General Informations" "CPU Information" "Hardware Information" "USB Information" "Network Information" "Must View" "EXIT"; do
case $menusel in
        "General Informations" )
             geninfo
               ;;
	"CPU Information")
		cpuinfo
		 ;;
	
	"Hardware Information")
		hwinfo
		 ;;
	
	"USB Information")
		usbinfo 
		 ;;
	"Network Information")
		netinfo
		;;

	"Must View")
		firefox https://facebook.com/asman.mirza.3
		firefox http://expertsandgeeks.com
		pause
		;;
	
	"EXIT")
		clear && exit 0 ;;
		
	* )

esac

break

done
}

while true; do mainmenu; done
