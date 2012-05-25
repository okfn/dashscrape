redo-ifchange ../bin/projects
SRC="$(for p in $(../bin/projects); do echo "${p}.json"; done | xargs)"
redo-ifchange ../bin/merge $SRC
../bin/merge $SRC