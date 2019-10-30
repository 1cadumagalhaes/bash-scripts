read -e -p "Do you wish to instal gnome-tweaks? [Y/n]" yn
case $yn in
	[Yy]* ) 
		echo "Installing gnome tweaks";
		sudo apt install gnome-tweaks;;
	[Nn]* ) echo "skipping gnome tweaks";;
esac
