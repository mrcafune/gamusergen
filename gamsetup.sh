#!/usr/bin/env bash
 
echo "Creating Account for $1"
adduser --gecos -m $1
cd /home/$1
mkdir Desktop
mkdir /home/$1/Desktop/gam
cd /home/$1/Desktop/gam
echo "Generating GAM install script"
touch installGam.sh
echo "Configuring Script..."
echo "#!/usr/bin/env bash" > installGam.sh
echo "bash <(curl -s -S -L https://gam-shortn.appspot.com/gam-install)" >> installGam.sh
echo "Script generated... generating link for GAM Python Script Base"
touch pythonScripts.txt
echo "https://github.com/taers232c/GAM-Scripts3/tree/master" >> pythonScripts.txt
echo "This process is complete"

