hostmatch iro.umontreal.ca || return

function lastmodified() { stat --format="%Y" $1 }

SRC=/opt/lisa/os/.local.bashrc
DST=~/.bashrc-lisa

if [[ `lastmodifed $SRC` -gt `lastmodifed $DST` ]]; then
    sed -e 's/==/=/g' $SRC > $DST
fi
source $DST

# steerads
export PATH=/Tmp/steerads/bin:/Tmp/steerads/src/steerads-collaborative/bin:/Tmp/steerads/src/steerads-collaborative/cron:/u/saintjaf/.local/bin:$PATH
export PYTHONPATH="/Tmp/steerads/lib/python2.7/site-packages"
export DISCO_HOME="/Tmp/steerads/lib/disco"
alias ddfs="ddfs -s /Tmp/steerads/etc/disco/settings.py"
alias disco="disco -s /Tmp/steerads/etc/disco/settings.py"
