clear
RETVAL=$(whiptail --title "DaanTech PIMusic" \
--menu --nocancel "PiMusic" 10 50 4 \
"a" "Start all" \
"b" "Start Spotify connect" \
"c" "Start Airplay" \
"d" "Stop all" \
"e" "Quit"
3>&1 1>&2 2>&3)

# Below you can enter the corresponding commands

case $RETVAL in
    a) echo "Please wait" 
       sudo systemctl start raspotify
       sudo systemctl start shairport-sync
	./musicmenu.sh
	;;
    b) echo "Please wait"
       sudo systemctl start raspotify
	./musicmenu.sh
	;;
    c) echo "Please wait"
	sudo systemctl start shairport-sync  
	./musicmenu.sh     
	;;
    d) echo "Please wait"
	sudo systemctl stop shairport-sync
	sudo systemctl stop raspotify
	./musicmenu.sh
    e) echo "Please wait"
	exit
    *) echo "Invalid option. Quitting";;
esac

