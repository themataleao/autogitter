cd /root/autogitter
filename=`cat /dev/urandom | tr -cd 'a-f0-9' | head -c 32`
filesize=1073
head -c $filesize </dev/urandom > "./random/$filename"
./gitpusher.sh