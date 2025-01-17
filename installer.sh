#! /bin/bash

sudo apt update
sudo apt full-upgrade -y

sudo apt install fish htop neofetch vlc i3 polybar picom numlockx playerctl rofi thunderbird vim wget
sudo rm /etc/polybar/config.ini
sudo wget "https://config.whisper-me.de/polybar/config.ini" -P /etc/polybar/
sudo chown "$USER:$USER" /etc/polybar

sudo wget "https://config.whisper-me.de/picom/picom.conf" -P ~/.config/picom/
sudo wget "https://config.whisper-me.de/fish/config.fish" -P ~/.config/fish/
sudo wget "https://config.whisper-me.de/htop/htoprc" -P ~/.config/htop/
sudo wget "https://config.whisper-me.de/neofetch/config.conf" -P ~/.config/neofetch/
sudo wget "https://config.whisper-me.de/rofi/config.rasi" -P ~/.config/rofi/
sudo wget "https://config.whisper-me.de/i3/config" -P ~/.config/i3/
sudo chown "$USER:$USER" ~/.config -R

sudo wget "https://config.whisper-me.de/vim/.vimrc" -P ~/
sudo chown "$USER:$USER" ~/.vimrc

chsh -s /usr/bin/fish

echo "rebooting..."
sleep 1

sudo reboot now
