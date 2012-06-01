SRC="$(for p in $(../bin/projects); do 
  echo "$p.json"
done | xargs)"

redo-ifchange ../bin/projects ../bin/merge ../size $SRC

../bin/merge $(cat ../size) $SRC