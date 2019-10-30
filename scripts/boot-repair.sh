read -e -p "Do you wish to instal boot-repair? [Y/n]" yn
case $yn in
	[Yy]* ) 
		echo "Installing boot-repair";
		sudo add-apt-repository ppa:yannubuntu/boot-repair;
		sudo apt-get update;
		sudo apt-get install boot-repair;;
	[Nn]* ) echo "skipping boot-repair";;
esac
