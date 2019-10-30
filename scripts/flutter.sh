read -e -p "Do you wish to instal flutter? [Y/n]" yn
case $yn in
	[Yy]* ) 
		echo "Installing flutter";
		wget -nc "https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_v1.9.1+hotfix.6-stable.tar.xz";
		mkdir development;
		cd development/;
		tar xf ~/Downloads/flutter_linux_v1.9.1+hotfix.6-stable.tar.xz;
		cd ~;
		echo "Add export PATH=\"\$PATH:\$HOME/development/flutter/bin\"";
		sudo gedit .profile;
		read -e -p "Edited? [Y/n]" sn
		case $sn in
			[Yy]* ) echo "Continuing";;
			[Nn]* ) echo "Continuing";;		
		esac
		source .profile;;
	[Nn]* ) echo "skipping flutter";;
esac
