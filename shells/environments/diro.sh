hostmatch iro.umontreal.ca || return

function lastmodified() { stat --format="%Y" $1 }

SRC=/opt/lisa/os/.local.bashrc
DST=~/.bashrc-lisa

if [[ ! -e $DST ]]; then
    sed -e 's/==/=/g' $SRC > $DST
fi

SRC_T=`lastmodified $SRC`
DST_T=`lastmodified $DST`
if [[ $SRC_T -gt $DST_T ]]; then
    sed -e 's/==/=/g' $SRC > $DST
fi
source $DST

# steerads
export PATH=/Tmp/steerads/bin:/Tmp/steerads/src/steerads-collaborative/bin:/Tmp/steerads/src/steerads-collaborative/cron:/u/saintjaf/.local/bin:/opt/lisa/os/epd-7.1.2/bin:$PATH
export PYTHONPATH="/Tmp/steerads/lib/python2.7/site-packages"
export DISCO_HOME="/Tmp/steerads/lib/disco"
alias ddfs="ddfs -s /Tmp/steerads/etc/disco/settings.py"
alias disco="disco -s /Tmp/steerads/etc/disco/settings.py"

function advertiser_stats() {
  for date in `dseq $1 $2`; do echo $date '      '; ddfs cat data:statistics:appnexus:accordant:campaigns:$date | sed -e 's/\.[^\t]*//' | sort | awk '{i[$1] += $2; c[$1] += $3; cv[$1] += $4} END{for(id in i) print id, i[id], c[id], cv[id]}'|sort;  done
}

function campaign_stats() {
  for date in `dseq $1 $2`; do echo $date '      '; ddfs cat data:statistics:appnexus:accordant:campaigns:$date ; done
}

function clean_theano_tmp() {
    for host in zappa{2..7} eos{4..6}; do echo $host; ssh $host 'rm -rf rm -rf /tmp/compiledir*'; done 2>/dev/null
}
