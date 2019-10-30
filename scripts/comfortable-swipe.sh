
read -e -p "Do you wish to instal comfortable-swipe? [Y/n]" yn
case $yn in
	[Yy]* ) 
		echo "Installing comfortable-swipe";
		sudo apt-get install libinput-tools libxdo-dev g++;
		git clone https://github.com/Hikari9/comfortable-swipe.git --depth 1;
		cd comfortable-swipe;
		bash install;
		sudo gedit $(comfortable-swipe config);
		read -e -p "Edited? [Y/n]" sn
		case $sn in
			[Yy]* ) echo "Continuing";;
			[Nn]* ) echo "Continuing";;		
		esac
		sudo gpasswd -a $USER $(ls -l /dev/input/event* | awk '{print $4}' | head --line=1);
		cd ~;;
	[Nn]* ) echo "skipping comfortable-swipe";;
esac