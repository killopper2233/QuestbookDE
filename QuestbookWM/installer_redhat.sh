### installer script for Red Hat based
sudo dnf install polybar
sudo dnf install openbox
sudo dnf install git
sudo dnf install feh
sudo mv assets/wallpaper.png /home/Desktop/

# git
sudo dnf install rofi
sudo dnf install calc

# pre-git-installation
sudo mv openbox/ .config
sudo mv polybar/ .config

echo "\033[32m Choose option 1 \033[0m" # warn user before installing the polybar theme.
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
