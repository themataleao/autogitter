#!/bin/bash
git add *
git commit -m "push it to the limmit"
git push origin master >> gitlogs/logs.log 2>&1