# Rebuild aggregate JSONP output.
redo-ifchange out/all.js

# Explicitly require JSONP for each individual project.
redo-ifchange bin/projects
./bin/projects | while read f; do
  echo "out/$f.js"
done | xargs redo-ifchange
