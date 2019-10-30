
read -e -p "Do you wish to instal grub-customizer? [Y/n]" yn
case $yn in
	[Yy]* ) 
		echo "Installing grub-customizer";
		echo "sudo add-apt-repository ppa:danielrichter2007/grub-customizer";
		sudo apt-get install grub-customizer;;
	[Nn]* ) echo "skipping grub-customizer";;
esac
