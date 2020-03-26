sudo true 

read -e -p "Do you wish to instal chrome? [Y/n]" yn
case $yn in
	[Yy]* ) 
		echo "Installing chrome";
		wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;
		sudo dpkg -i google-chrome-stable_current_amd64.deb;;
	[Nn]* ) echo "skipping chrome";;
esac

read -e -p "Do you wish to instal gparted? [Y/n]" yn
case $yn in
	[Yy]* ) 
		echo "Installing gparted";
		sudo apt install gparted;
		sudo ubuntu-drivers autoinstall;;
	[Nn]* ) echo "skipping gparted";;
esac


read -e -p "Do you wish to instal gnome-tweaks? [Y/n]" yn
case $yn in
	[Yy]* ) 
		echo "Installing gnome tweaks";
		sudo apt install gnome-tweaks;;
	[Nn]* ) echo "skipping gnome tweaks";;
esac


read -e -p "Do you wish to instal npm and git? [Y/n]" yn
case $yn in
	[Yy]* ) 
		echo "Installing npm";
		sudo apt-get install npm;
		echo "Installing git";
		sudo apt update;
		sudo apt install git;
		git config --global user.name "Carlos Magalhaes";
		git config --global user.email "magalhaescarlosedu@gmail.com";;
	[Nn]* ) echo "skipping npm and git";;
esac

read -e -p "Do you wish to instal vscode? [Y/n]" yn
case $yn in
	[Yy]* ) 
		echo "Installing vscode";
		sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list';
		curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg;
		sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg;
		sudo apt-get update;
		sudo apt-get install code;;
	[Nn]* ) echo "skipping vscode";;
esac

read -e -p "Do you wish to instal telegram? [Y/n]" yn
case $yn in
	[Yy]* ) 
		echo "Installing telegram";
		sudo rm -Rf /opt/telegram*;
		sudo rm -Rf /usr/bin/telegram;
		sudo rm -Rf /usr/share/applications/telegram.desktop;
		sudo add-apt-repository ppa:atareao/telegram;
		sudo apt-get update && sudo apt-get install telegram;
		echo "Adding utf8 characters to the execution";
		sed -i 's/Exec=/Exec=env QT_IM_MODULE=xim /g' /usr/share/applications/telegram.desktop;
		cd ~;;
	[Nn]* ) echo "skipping telegram";;
esac


read -e -p "Do you wish to instal comfortable-swipe? [Y/n]" yn
case $yn in
	[Yy]* ) 
		echo "Installing comfortable-swipe";
		sudo apt-get install libinput-tools libxdo-dev g++;
		git clone https://github.com/Hikari9/comfortable-swipe.git --depth 1;
		cd comfortable-swipe;
		bash install;
		echo "to edit type: sudo gedit $(comfortable-swipe config);"
		sudo gpasswd -a $USER $(ls -l /dev/input/event* | awk '{print $4}' | head --line=1);
		cd ~;;
	[Nn]* ) echo "skipping comfortable-swipe";;
esac


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


read -e -p "Do you wish to instal flutter? [Y/n]" yn
case $yn in
	[Yy]* ) 
		echo "Installing flutter";
		wget -nc "https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_v1.12.13+hotfix.8-stable.tar.xz";
		mkdir development;
		cd development/;
		tar xf ~/Downloads/flutter_linux_v1.12.13+hotfix.8-stable.tar.xz;
		cd ~;
		echo "Editing .profile to export path";
		echo "export PATH=\"\$PATH:\$HOME/development/flutter/bin\"" >> .profile;
		source .profile;;
	[Nn]* ) echo "skipping flutter";;
esac


read -e -p "Do you wish to instal nvm? [Y/n]" yn
case $yn in
	[Yy]* ) 
		echo "Installing nvm";
		sudo apt-get install build-essential libssl-dev;
		curl https://raw.githubusercontent.com/creationix/nvm/v0.35.0/install.sh | bash;;
	[Nn]* ) echo "skipping nvm";;
esac

read -e -p "Do you wish to instal arduino ide? [Y/n]" yn
case $yn in
	[Yy]* ) 
		echo "Installing arduino ide";
		wget -nc "https://downloads.arduino.cc/arduino-1.8.10-linux64.tar.xz";
		tar -Jxxvf arduino-1.8.10-linux64.tar.xz;
		sudo mv arduino-1.8.10/ /opt/;
		cd /opt/arduino-1.8.10/;
		sudo chmod +x install.sh;
		sudo ./install.sh;
		cd ~;;
	[Nn]* ) echo "skipping arduino ide";;
esac

read -e -p "Do you wish to instal grub-customizer? [Y/n]" yn
case $yn in
	[Yy]* ) 
		echo "Installing grub-customizer";
		echo "sudo add-apt-repository ppa:danielrichter2007/grub-customizer";
		sudo apt-get install grub-customizer;;
	[Nn]* ) echo "skipping grub-customizer";;
esac


read -e -p "Do you wish to instal boot-repair? [Y/n]" yn
case $yn in
	[Yy]* ) 
		echo "Installing boot-repair";
		sudo add-apt-repository ppa:yannubuntu/boot-repair;
		sudo apt-get update;
		sudo apt-get install boot-repair;;
	[Nn]* ) echo "skipping boot-repair";;
esac

read -e -p "Do you wish to instal gcloud? [Y/n]" yn
case $yn in
	[Yy]* ) 
		echo "Installing gcloud sdk";
		sudo snap install google-cloud-sdk --classic;;
	[Nn]* ) echo "skipping gcloud";;
esac

read -e -p "Do you wish to instal github desktop? [Y/n]" yn
case $yn in
	[Yy]* ) 
	echo "Installing github desktop";
	sudo snap install github-desktop --beta --classic;;
	[Nn]* ) echo "skipping github desktop";;
esac

