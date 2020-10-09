#!/bin/bash

jemdoc index.jemdoc
jemdoc fa20/*.jemdoc

echo 'Enter commit message'
read msg

git add .
git commit -m "$msg"
git push

rsync -av /Users/nived.rajaraman/Dropbox/websites/bliss-website-and-seminar/ -e ssh nived.rajaraman@login.eecs.berkeley.edu:/home/eecs/jiantao/public_html/bliss
