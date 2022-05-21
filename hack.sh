#! /bin/sh

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
fi
