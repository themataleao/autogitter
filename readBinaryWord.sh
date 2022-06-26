#bin/bash
binaryWord=`cat binarizedWord.txt`
for (( i=0; i<${#binaryWord}; i++ )); do
  echo "${binaryWord:$i:1}"
  pushOrNot=`${binaryWord:$i:1}`
  sleep 10
  ./autogitter.sh
  if [ "$pushOrNot" == "1" ]; then
    for i in {1..20}
    do
      sleep 10
      ./autogitter.sh
    done
  else
    echo "This day was skipped"
  fi
done