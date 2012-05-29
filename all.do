#
# Rebuild all project targets
#

# rebuild individual scrapes
find projects -type f | while read line; do
  echo "out/${line#projects/}"
done | xargs redo-ifchange

# rebuild project aggregates
./bin/projects | while read line; do
  echo "out/${line}.json"
done | xargs redo-ifchange

# rebuild all-project aggregates
redo-ifchange out/all.json
