# youtify
Installs and configures youtube-dl and spotdl for music and videos downloading in android termux

You can simply install this downloader by copy an pasting in termux the next line only after clean termux install (you can install it after installing other programs or repositories but I don garantize it to work beacuse it can interfer with them):
```
pkg install git -y; git clone https://github.com/gabosxpiens/youtify.git; cd youtify; chmod +x setup.sh; ./setup.sh && exit
```
**Instructions of use**


After installing you can go to any youtube video or spotify song and share it in the app to termux, after finishing downloading the video will be in your internal storage inside the folder "Youtube-downloads" and the songs in "Music" folder.


This script uses spotdl ( https://github.com/ritiek/spotify-downloader )

To share songs, albums and playlist from spotify you will se somtehing like the next image:

![alt text](https://i.imgur.com/aSEIGCy.jpg)

Write anything you want and press enter (This creates a file that will be automatically deleted)

![alt text](https://i.imgur.com/093zkht.jpg)

![alt text](https://i.imgur.com/AJQCXx7.jpg)

Now you can download Youtube videos with subtitles!
(Vlc player recommended for subs)

![alt text](https://i.imgur.com/YGi5K8F.jpg)

![alt text](https://i.imgur.com/tLGItLI.jpg)

![alt text](https://i.imgur.com/hMmpipL.jpg)


**Problems**

This was partialy solved, you can write any (non-empty) filename an press enter. Any help to skip the "Save file in ~/donwloads/" message will be welcome.

~~In some versions of the Spotify app when you share a song to termux, spotify shares a text like "Here is a song for you (song link)". This makes the termux-url-opener fail because termux doesn't recognize this as a link and displays a window that says something like "Save file in ~/downloads"
I'm trying to fix this but at the moment this config is not working with the latest spotify version (8.5.43.724 01/29/2020).
You can still download the spotify song using spotdl and the link of the spotify song. For this when sharing in spotify select "copy link" and then go to termux and write:~~

~~spotdl -s (Paste shared link here)~~

~~This will download the song in the Music folder on the internal storage~~
