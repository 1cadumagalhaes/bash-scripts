read -e -p "Do you wish to instal chrome? [Y/n]" yn
case $yn in
	[Yy]* ) 
		echo "Installing chrome";
		wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;
		sudo dpkg -i google-chrome-stable_current_amd64.deb;;
	[Nn]* ) echo "skipping chrome";;
esac

