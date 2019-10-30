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