clear
echo Installing dialog
echo ------------------
sudo apt install dialog -y
echo Starting setup
echo ------------------
dialog --prgbox "Downloading dependencies" "sudo chmod +x ./installsc.sh && ./installsc.sh " 100 100
echo copying menu
sudo cp menu.sh ~/musicmenu.sh
cd ~  
while true; do
read -p "Launch on startup?" yn
case $yn in
	[Yy]* ) sudo echo ./musicmenu.sh >> ./.bashrc ; break;;
	[Nn]* ) break;;
 * ) echo Answer Y/N
esac
done

echo Setup completed! Please restart your system
