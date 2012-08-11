mkdir -p ~/src/dot-files
hash git >/dev/null && /usr/bin/env git clone https://github.com/fsaintjacques/dot-files ~/src/dot-files || {
    echo "git not installed"
    exit
}

cd ~/src/dot-files
make
