#!/bin/bash

jemdoc/jemdoc -c mysite.conf ./index.jemdoc
jemdoc/jemdoc -c mysite.conf ./past.jemdoc
jemdoc/jemdoc -c ./jemdoc/mysite.conf ./fa21/*.jemdoc
jemdoc/jemdoc -c ./jemdoc/mysite.conf ./sp21/*.jemdoc

echo 'Enter commit message'
read msg

git add .
git commit -m "$msg"
git push

rsync -av /Users/nived.rajaraman/Dropbox/websites/bliss-website-and-seminar/ -e ssh nived.rajaraman@login.eecs.berkeley.edu:/home/eecs/jiantao/public_html/bliss
