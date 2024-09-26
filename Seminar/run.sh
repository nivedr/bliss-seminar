#!/bin/bash

jemdoc/jemdoc -c ./jemdoc/mysite.conf ./index.jemdoc
jemdoc/jemdoc -c ./jemdoc/mysite.conf ./past.jemdoc
jemdoc/jemdoc -c ./jemdoc/mysite.conf ./fa24/*.jemdoc

echo 'Enter commit message'
read msg

git pull
git add .
git commit -m "$msg"
git push --set-upstream origin master

rsync -av /Users/nived.rajaraman/Dropbox/websites/bliss-website-and-seminar -e ssh nived.rajaraman@login.eecs.berkeley.edu:/home/eecs/jiantao/public_html/bliss
