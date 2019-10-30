read -e -p "Do you wish to instal gcloud? [Y/n]" yn
case $yn in
	[Yy]* ) 
		echo "Installing gcloud sdk";
		sudo snap install google-cloud-sdk --classic;;
	[Nn]* ) echo "skipping gcloud";;
esac