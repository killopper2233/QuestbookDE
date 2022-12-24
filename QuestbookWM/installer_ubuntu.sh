### installer script for Ubuntu / Debian
sudo apt install polybar
sudo apt install openbox
sudo apt install git
sudo apt install feh
sudo mv assets/wallpaper.png /home/Desktop/

# git
sudo apt install rofi
sudo apt install calc

# pre-git-installation
sudo mv openbox .config
cd openbox &&
sudo mv autostart.sh ~/.config/openbox
sudo mv rc.xml ~/.config/openbox
cd ..

sudo mv polybar .config


echo "select option 1" # warn user before installing the polybar theme.
sleep 3s

git clone --depth=1 https://github.com/adi1090x/polybar-themes.git
cd polybar-themes
chmod +x setup.sh

./setup.sh

git clone https://github.com/addy-dclxvi/openbox-theme-collections ~/.themes

# post-git-installation
sudo mv openbox.desktop /usr/share/xsessions

echo "rebooting your system, please wait 3s..."
sleep 2s
reboot
