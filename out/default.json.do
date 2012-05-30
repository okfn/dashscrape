# ./bin/do generates 'target.did' files: ignore them
SRC="$(find $2 -type f ! -name '*.did' | xargs)"
redo-ifchange ../bin/merge ../size $SRC
../bin/merge $(cat ../size) $SRC