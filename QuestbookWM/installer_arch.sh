### installer script for Arch based
sudo pacman -S polybar
sudo pacman -S openbox
sudo pacman -S git
sudo pacman -S feh
sudo mv assets/wallpaper.png /home/Desktop/

# git
sudo pacman -S rofi
sudo pacman -S calc

# pre-git-installation

sudo mv openbox/ .config
sudo mv polybar/ .config

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
