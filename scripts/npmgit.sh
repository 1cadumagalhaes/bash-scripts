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
