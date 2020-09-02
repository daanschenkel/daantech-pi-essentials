clear
echo Installing dialog
echo ------------------
sudo apt install dialog -y
echo Starting setup
echo ------------------
dialog --prgbox "Downloading dependencies" "sudo chmod +x ./installsc.sh && ./installsc.sh " 100 100 
while true; do
read -p "Launch on startup?" yn
case $yn in
	[Yy]* ) sudo cd ~ && echo ./musicmenu.sh >> ./.bashrc ; break;;
	[Nn]* ) break;;
 * ) echo Answer Y/N
esac
done

echo Setup completed! Please restart your system
