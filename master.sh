#!/bin/bash

./jemdoc.py index.jemdoc
./jemdoc.py research.jemdoc
./jemdoc.py CV.jemdoc
./jemdoc.py life.jemdoc
# python2.7jemdoc.py activities.jemdoc

# tac index.html | awk 'NR > 2' | tac > tmp.html
# cat tmp.html > index.html
# rm tmp.html
# cat counter.txt >> index.html
# echo "" >> index.html
# echo "</body>" >> index.html
# echo "</html>" >> index.html

git add .
git commit -m "new update $(date)"
git push
