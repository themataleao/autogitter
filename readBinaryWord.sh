binaryWord=`cat binaryWord`
for (( i=0; i<${#binaryWord}; i++ )); do
  echo "${binaryWord:$i:1}"
done