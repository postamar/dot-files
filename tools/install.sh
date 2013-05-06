DOT_FILES_REPO=https://github.com/postamar/dot-files
mkdir -p ~/src/dot-files
hash git >/dev/null && /usr/bin/env git clone $REPO ~/dot-files || {
    echo "git not installed"
    exit
}

cd ~/dot-files
make
