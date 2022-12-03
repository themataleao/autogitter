binaryWord=`cat binarizedWord.txt`
for (( i=0; i<${#binaryWord}; i++ )); do
  pushOrNot=${binaryWord:$i:1}
  if [ "$pushOrNot" == "1" ]; then
    echo "this is a 1"
  else
    echo "this is a 0"
  fi
  echo "day finished"
done