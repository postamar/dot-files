hostmatch steerads-desktop1 || return

export PATH=/data/src/steerads-collaborative-git/bin:/data/src/steerads-collaborative-git/cron:$PATH
export PYTHONPATH=/data/src/steerads/src/py-steerads:/data/src/jobman:/data/src/theano:$PYTHONPATH
export STEERADS_HOME=/data/src/steerads
