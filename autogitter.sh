filename=`cat /dev/urandom | tr -cd 'a-f0-9' | head -c 32`
filesize=10737
head -c $filesize </dev/urandom > "./random/$filename"