
read -e -p "Do you wish to instal nvm? [Y/n]" yn
case $yn in
	[Yy]* ) 
		echo "Installing nvm";
		sudo apt-get install build-essential libssl-dev;
		curl https://raw.githubusercontent.com/creationix/nvm/v0.35.0/install.sh | bash;;
	[Nn]* ) echo "skipping nvm";;
esac
