
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
