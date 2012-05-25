SRC="$(find $2 -type f | xargs)"
redo-ifchange ../bin/merge $SRC
../bin/merge $SRC