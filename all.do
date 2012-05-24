export PATH="${VIRTUAL_ENV}/bin:$PATH"

find projects -type f | while read line; 
  do echo "out/${line#projects/}"
done | xargs redo-ifchange