read -e -p "Do you wish to instal github desktop? [Y/n]" yn
case $yn in
	[Yy]* ) 
	echo "Installing github desktop";
	sudo snap install github-desktop --beta --classic;;
	[Nn]* ) echo "skipping github desktop";;
esac