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

function retargeting_advertiser_stats() {
    DATE=$1
    DIR=/Str/steerads/var/processed/appnexus/accordant
    TMP=$(mktemp)
    USERS=${DIR}/users-converted.gz

    collaborative statistic campaign -U $USERS -d $DATE -p accordant > $TMP
    for i in 3 4 6; do cat $TMP | merge-statistics 4274.167108.5594$i ; done

    # add newly converted users
    (zcat ${DIR}/order_${DATE}* | cut -f3; zcat $USERS) | sort -u |gzip > ${TMP}
    mv $TMP $USERS
}

function advertiser_stats() {
  for date in `dseq $1 $2`; do echo -n "$date "; ddfs cat data:statistics:appnexus:accordant:campaigns:$date | merge-statistics $3;  done
}
