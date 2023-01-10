### Install Nala to enable parallel downloading 

sudo pacman -S nala

### installer script for Ubuntu / Debian
sudo nala install plank openbox git feh neofetch rofi calc

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

#Polybar is no longer used; install Plank and the theme.
echo "Installing plank theme..."
cd Theme && sudo mv Questbook.theme ~/.local/share/plank/themes

# post-git-installation
sudo wget https://github.com/killopper2233/QuestbookWM/blob/main/QuestbookWM/openbox.desktop /usr/share/xsessions

# Moves wallpaper to system wallpaper folder
sudo wget https://github.com/killopper2233/QuestbookWM/raw/main/QuestbookWM/assets/wallpaper.png /usr/share/backgrounds

# Change BashRC to incorporate a reminder
wget https://github.com/Sprungles/.configs/blob/main/bashrc ~/.bashrc

echo "logging out your system, please wait 3s..."
sleep 1s
gnome-session-quit
