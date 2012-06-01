SRC="$(find ../projects/$2 -type f | while read f; do 
  echo "${f#../projects/}"
done | xargs)"

redo-ifchange ../bin/merge ../size $SRC

../bin/merge $(cat ../size) $SRC