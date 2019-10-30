read -e -p "Do you wish to instal telegram? [Y/n]" yn
case $yn in
	[Yy]* ) 
		echo "Installing telegram";
		sudo rm -Rf /opt/telegram*;
		sudo rm -Rf /usr/bin/telegram;
		sudo rm -Rf /usr/share/applications/telegram.desktop;
		sudo add-apt-repository ppa:atareao/telegram;
		sudo apt-get update && sudo apt-get install telegram;
		echo "add env QT_IM_MODULE=xim";
		sudo gedit /usr/share/applications/telegram.desktop;
		read -e -p "Edited? [Y/n]" sn;
		case $sn in
			[Yy]* ) echo "Continuing";;
			[Nn]* ) echo "Continuing";;		
		esac
		cd ~;;
	[Nn]* ) echo "skipping telegram";;
esac
