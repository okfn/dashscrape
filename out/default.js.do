redo-ifchange "$2.json"
echo -n "__dashscrapeCallback("
cat "$2.json"
echo ");"