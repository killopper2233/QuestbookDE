### Warning before installation ### 

echo "Make sure to install openbox via your package manager"
echo " "
echo " "

### Install & make required packages

npm install electron
npm install path
npm install url
npm install x11
npm install fs
sudo apt install plank

### After installing NPM packages.

sudo mkdir ~/.config
sudo mv autostart.sh ~/local/.config/
cd openbox && sudo mv openbox.desktop /usr/share/xsessions

### Post installation

echo "Successfully installed! Rebooting your system now!"
sleep 5s
reboot