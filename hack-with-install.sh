#! /bin/sh

if [[ $(whereis mpv | grep /usr/bin/mpv) = "" ]] & [[ $(whereis youtube-dl | grep /usr/bin/youtube-dl) = "" ]] & [[ $(whereis ffmpeg | grep /usr/bin/ffmpeg) = "" ]]; then
    if [ $EUID != 0 ]; then
	sudo "$0" "$@"
	exit $?
    fi

    echo "Some neccessary hacking software is required"
    echo "Do you want to install it? (y/n)"
    
    read install

    if [[ $install == "y" ]]; then
	pacman -S mpv youtube-dl ffmpeg
    else
        echo "Hack aborted"
	exit
    fi
    
else
    echo "All neccessary software to hack is installed"
fi

echo "--------------------------------------"
echo "Are you sure you want to to hack?"
echo "Type Yes! Do as I say. to hack"

read hack

if [[ $hack == "Yes! Do as I say." ]]; then
    echo "Hacking... This may take a while"; youtube-dl https://www.youtube.com/watch?v=dQw4w9WgXcQ -x &> /dev/null; ffmpeg -i Rick\ Astley\ -\ Never\ Gonna\ Give\ You\ Up\ \(Official\ Music\ Video\)-dQw4w9WgXcQ.opus /tmp/rick.mp3 &> /dev/null; rm Rick\ Astley\ -\ Never\ Gonna\ Give\ You\ Up\ \(Official\ Music\ Video\)-dQw4w9WgXcQ.opus &>/dev/null
    echo "Hack Complete!"
    sleep 1
    echo "Get trolled XDeez"; mpv --no-video /tmp/rick.mp3 &> /dev/null
else
    echo "Hack aborted"
    exit
fi
