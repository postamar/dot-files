hostmatch iro.umontreal.ca || return

function lastmodified() { stat --format="%Y" $1 }

SRC=/opt/lisa/os/.local.bashrc
DST=~/.bashrc-lisa

if [[ `lastmodifed $SRC` -gt `lastmodifed $DST` ]]; then
    sed -e 's/==/=/g' $SRC > $DST
fi
source $DST
