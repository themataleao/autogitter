binaryWord=`cat binarizedWord.txt`
for (( i=0; i<${#binaryWord}; i++ )); do
  echo "${binaryWord:$i:1}"
  sleep 1
done