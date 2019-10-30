read -e -p "Do you wish to instal wine? [Y/n]" yn
case $yn in
	[Yy]* ) 
		echo "Installing wine";
		sudo apt remove wine wine1.8 wine-stable libwine* fonts-wine* && sudo apt autoremove;
		sudo dpkg --add-architecture i386;
		wget -nc https://dl.winehq.org/wine-builds/Release.key;
		sudo apt-key add Release.key;
		sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/ -y;
		sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 76F1A20FF987672F;
		sudo apt-get update;
		sudo apt-get install wine-stable -y;;
	[Nn]* ) echo "skipping wine";;
esac
