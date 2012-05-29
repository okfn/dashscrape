PATH="${VIRTUAL_ENV}/bin:$PATH"
SERV="${1##*/}"
PROJ="${1%/*}"

redo-ifchange "../bin/scrape-${SERV}" "../projects/${1}" ../size

mkdir -p "${PROJ}"
<"../projects/${1}" "../bin/scrape-${SERV}" $(cat ../size)
