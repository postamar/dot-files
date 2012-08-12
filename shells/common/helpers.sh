function osx {
  [[ `uname -s` == 'Darwin' ]]
}

function hostmatch() {
    if [[ `hostname --fqdn` =~ $1 ]]; then
        return 0
    fi
    return 1
}

function dseq() {
    start=$1;
    end=$2;
    echo $start;

    while [ "$start" != "$end" ] ; do
        start=`date +"%Y-%m-%d" -d "$start+ 1 day"`;
        echo "$start";
    done
}
