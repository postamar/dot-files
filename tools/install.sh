DOT_FILES_REPO=https://github.com/fsaintjacques/dot-files
mkdir -p ~/src/dot-files
hash git >/dev/null && /usr/bin/env git clone $REPO ~/src/dot-files || {
    echo "git not installed"
    exit
}

cd ~/src/dot-files
make
