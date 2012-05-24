SERV="${1##*/}"
PROJ="${1%/*}"

redo-ifchange "../bin/scrape-${SERV}" "../projects/${1}"

rm -f "${PROJ}/ood"
redo-ifcreate "${PROJ}/ood"

mkdir -p "${PROJ}"
<"../projects/${1}" "../bin/scrape-${SERV}"
