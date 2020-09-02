#!/bin/bash
clear
HEIGHT=20
WIDTH=40
CHOICE_HEIGHT=20
BACKTITLE="RaspberryPiEssentials"
TITLE="RPIEssentials"
MENU="Choose option"

OPTIONS=(1 "Start all"
         2 "Start spotify"
	 3 "Start airplay"
	 4 "Stop all"
         5 "Exit")

CHOICE=$(dialog --clear \
                --no-cancel\
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

case $CHOICE in
        1)
            echo "Starting all..."
	   dialog --infobox "Please wait" 10 20
	    sudo systemctl start raspotify
            sudo systemctl start shairport-sync
            ;;
        2)
            echo "Starting spotify..."
             dialog --infobox "Please wait" 10 20
	    sudo systemctl start raspotify
            ;;
        3)
            echo "Starting airplay..."
	    dialog --infobox "Please wait" 10 20
	    sudo systemctl start shairport-sync
            ;;
	4)
	   echo "Stopping all..."
	   dialog --infobox "Please wait" 10 20
	   sudo systemctl stop raspotify
           sudo systemctl stop shairport-sync
           ;; 
	5)
	   echo "Quitting..."
           exit;;
esac
./musicmenu.sh
