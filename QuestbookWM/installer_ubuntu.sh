### Install Nala to enable parallel downloading 

sudo apt install nala

### installer script for Ubuntu / Debian
sudo nala install plank openbox git feh neofetch rofi calc

### Download QuestbookWM Repo

echo "Do you wish to download and install QuestbookWM?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) mkdir ~/questbook && cd ~/questbook && git clone --depth=1  https://github.com/killopper2233/QuestbookWM.git && cd QuestbookWM/QuestbookWM && sudo mv openbox/ ~/.config && sudo rm -rf ~/questbook ; break;;
        No ) exit;;
    esac
done

# Wait 3 seconds
echo "Please wait 3 seconds..."
sleep 3s

#Polybar is no longer used; install Plank and the theme.
echo "Installing plank theme..."
sudo mv Shell /usr/share/plank/themes/

# post-git-installation
cd ~/QuestbookWM/QuestbookWM/ &&
sudo mv openbox.desktop /usr/share/xsessions &&
sudo mv ~/QuestbookWM/QuestbookWM/openbox/ ~/.config

# Moves wallpaper to system wallpaper folder
sudo mv ~/QuestbookWM/QuestbookWM/assets/wallpaper.png /usr/share/backgrounds

# Change BashRC to incorporate a reminder
#wget https://github.com/Sprungles/.configs/blob/main/bashrc ~/.bashrc

echo "logging out your system..."
sleep 1s
gnome-session-quit
