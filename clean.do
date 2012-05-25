#
# Remove all derived files
#
find out -mindepth 1 -maxdepth 1 -type d -print0 | xargs -0 rm -r
rm -r .redo