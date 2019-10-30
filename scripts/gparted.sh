
read -e -p "Do you wish to instal gparted? [Y/n]" yn
case $yn in
	[Yy]* ) 
		echo "Installing gparted";
		sudo apt install gparted;
		sudo ubuntu-drivers autoinstall;;
	[Nn]* ) echo "skipping gparted";;
esac