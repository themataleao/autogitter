#bin/bash
binaryWord=`cat binarizedWord.txt`
for (( i=0; i<${#binaryWord}; i++ )); do
  echo "${binaryWord:$i:1}"
  pushOrNot=${binaryWord:$i:1}
  sleep 10
  ./autogitter.sh
  if [ "$pushOrNot" == "1" ]; then
    for i in {1..20}
    do
      echo "Push it..."
      ./autogitter.sh
       sleep 10
    done
  else
    echo "...to the limit"
  fi
done