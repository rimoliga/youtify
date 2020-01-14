#!/data/data/com.termux/files/usr/bin/bash

termux-setup-storage 
#Asks for storage permissions

sleep 5s
apt update && apt upgrade -y 
#Updates and upgrades termux packages

pkg install python ffmpeg -y 
#Installs python

pip install youtube-dl  
pip3 install spotdl
#Installs youtube-dl and spotdl

#~Starts Youtube-dl configuration~

if [[ ! -d /data/data/com.termux/files/home/storage/shared/Youtube-downloads ]]; then
  mkdir /data/data/com.termux/files/home/storage/shared/Youtube-downloads
fi 
#Creates folder where the videos will be downloaded

if [[ ! -d ~/.config/youtube-dl ]]; then
  mkdir -p ~/.config/youtube-dl  
fi 
#Creates youtube-dl config folder

cp config ~/.config/youtube-dl
#Creates config file for youtube-dl

#~Ends Youtube-dl configuration~

#~Starts spotdl configuration~


if [[ ! -d /data/data/com.termux/files/home/storage/shared/Music ]]; then
  mkdir /data/data/com.termux/files/home/storage/shared/Music
fi 
#Creates folder where the music will be downloaded

if [[ -e /data/data/com.termux/files/home/.config/spotdl/config.yml ]]; then
  mv config.yml config.backup
fi 

if [[ ! -d /data/data/com.termux/files/home/.config/spotdl ]]; then
  mkdir /data/data/com.termux/files/home/spotdl
fi 


cp config.yml ~/.config/spotdl/config.yml

#~Ends spotdl configuration~

if [[ ! -d ~/bin ]]; then
  mkdir ~/bin
fi 
#Creates bin folder for termux-url-opener if doesn't exists

if [[ -e ~/bin/termux-url-opener ]]; then
  rm ~/bin/termux-url-opener
fi 

cp termux-url-opener ~/bin

echo "Downloading test video"
youtube-dl https://www.youtube.com/watch?v=dQw4w9WgXcQ
#Downloads Rick Astley's Never gonna Give you Up video

echo "..."
echo "Downloading test song"
spotdl --song https://open.spotify.com/track/4uLU6hMCjMI75M1A2tKUQC?si=dLH5xrYaT_CX4RJ3sfFpvA
#Downloads Rick Astley's Never gonna Give you Up song

echo "..."
echo "Everything should be working now"
echo "Have fun!"
read -n 1 -s -p "Press any key to exit..."
