# youtify
Installs and configures youtube-dl and spotdl for music and videos downloading in android termux

You can simply install this downloader by copy an pasting in termux the next line only after clean termux install (you can install it after installing other programs or repositories but I don garantize it to work beacuse it can interfer with them):
```
pkg install git -y; git clone https://github.com/gabosxpiens/youtify.git; cd youtify; chmod +x setup.sh; ./setup.sh && exit
```
**Instructions of use**


After installing you can go to any youtube video or spotify song and share it in the app to termux, after finishing downloading the video will be in your internal storage inside the folder "Youtube-downloads" and the songs in "Music" folder.


This script uses spotdl ( https://github.com/ritiek/spotify-downloader )
