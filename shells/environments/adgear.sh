HADOOP_NODES=(h021 h02{3..6})
HADOOP_MASTER=(h022)
HADOOP_HOSTS=($HADOOP_NODES $HADOOP_MASTER)

DELIVERY_MTL_HOSTS=(h0{09,10,11,12,19,20})
DELIVERY_LAX_HOSTS=(h0{13,14,15})
DELIVERY_LON_HOSTS=(h0{16,17,18})
DELIVERY_HOSTS=($DELIVERY_MTL_HOSTS $DELIVERY_LAX_HOSTS $DELIVERY_LON_HOSTS)

hostmatch bloomdigital || return

export PATH=~/.local/bin:$PATH
