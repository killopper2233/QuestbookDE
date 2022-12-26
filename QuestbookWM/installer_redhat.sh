### installer script for Ubuntu / Debian
sudo dnf install polybar openbox git feh neofetch rofi calc

### Download QuestbookWM Repo

echo "Do you wish to download and install QuestbookWM?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) mkdir ~/questbook && cd ~/questbook && git clone --depth=1  https://github.com/killopper2233/QuestbookWM.git && cd QuestbookWM/QuestbookWM &&sudo mv openbox/ ~/.config && sudo mv polybar/ ~/.config && cd ~/ && rm -rf ~/questbook ; break;;
        No ) exit;;
    esac
done

# Wait 3 seconds
sleep 3s

#Ask the user if they want to install the polybar theme
echo "Do you wish to install a polybar theme?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) cd ~/ &&  git clone --depth=1 https://github.com/adi1090x/polybar-themes.git && cd polybar-themes && chmod +x setup.sh && ./setup.sh && git clone https://github.com/addy-dclxvi/openbox-theme-collections ~/.themes && cd ~/ && sudo rm -rf ~/polybar-themes ; break;;
        No ) exit;;
    esac
done

# post-git-installation
sudo wget https://github.com/killopper2233/QuestbookWM/blob/main/QuestbookWM/openbox.desktop /usr/share/xsessions

# Moves wallpaper to system wallpaper folder
sudo wget https://github.com/killopper2233/QuestbookWM/raw/main/QuestbookWM/assets/wallpaper.png /usr/share/backgrounds

# Change BashRC to incorporate a reminder
wget https://github.com/Sprungles/.configs/blob/main/bashrc ~/.bashrc

echo "logging out your system, please wait 3s..."
sleep 1s
gnome-session-quit
