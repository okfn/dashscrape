SRC="$(find $2 -type f | xargs)"
redo-ifchange ../bin/merge ../size $SRC
../bin/merge $(cat ../size) $SRC