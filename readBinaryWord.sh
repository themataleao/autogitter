#!/bin/bash
binaryWord=`cat binarizedWord.txt`
for (( i=0; i<${#binaryWord}; i++ )); do
  pushOrNot=${binaryWord:$i:1}
  if [ "$pushOrNot" == "1" ]; then
    for i in {1..50}
    do
      echo "Push it..."
      ./autogitter.sh
      MINWAIT=10
      MAXWAIT=30
      sleep $((MINWAIT+RANDOM % (MAXWAIT-MINWAIT)))
    done
  else
    for c in {1..10}
    do
      echo "Push it..."
      ./autogitter.sh
      MINWAIT=10
      MAXWAIT=30
      sleep $((MINWAIT+RANDOM % (MAXWAIT-MINWAIT)))
    done
    echo "...to the limit"
  fi
  sleep 1d
done