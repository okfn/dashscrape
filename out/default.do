SERV="${1##*/}"
PROJ="${1%/*}"

redo-ifchange "../bin/scrape-${SERV}" "../projects/${1}"

mkdir -p "${PROJ}"
<"../projects/${1}" "../bin/scrape-${SERV}"
