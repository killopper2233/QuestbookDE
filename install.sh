### OPEN SOURCE ### 

echo "Questbook Installer v0.12.1"
echo ""
echo "Make sure to install openbox via your package manager..."
echo " "
echo " "

### Install & make required packages

npm install electron
npm install path
npm install url
npm install x11
npm install fs

### After installing NPM packages.

sudo mv autostart.sh ~/.config/
cd openbox && sudo mv openbox.desktop /usr/share/xsessions

### Post installation

echo "Successfully installed! Rebooting your system now!"
sleep 5s
reboot
