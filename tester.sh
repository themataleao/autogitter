    howMany=$((5+RANDOM % 15))
    for i in {1..${howMany}}
    do
      echo "Push it..."
      ./autogitter.sh
      MINWAIT=10
      MAXWAIT=30
      sleep $((MINWAIT+RANDOM % (MAXWAIT-MINWAIT)))
    done