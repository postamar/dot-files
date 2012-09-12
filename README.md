# dot-files

This project is a fork of https://github.com/bjeanes/dot-files with personnal modifications.

# Installation

_Warning_ The installation procedure will overwrite the following files or folders: `~/.{gitconfig,gitignore,vimrc,gvimrc,vim,screenrc,zshrc,oh-my-zsh}`.

* wget

     `wget --quiet https://raw.github.com/fsaintjacques/dot-files/master/tools/install.sh -O - | sh`

* curl

     `curl -L https://raw.github.com/fsaintjacques/dot-files/master/tools/install.sh | sh`

* manual

     `git clone https://github.com/fsaintjacques/dot-files.git`

     `cd dot-files`

     `make`

# Customization

Files that contain personnal references (name/email):

* vcs/git/gitconfig (name, email)
* vcs/hg/hgrc (name, email)
* tools/install.sh (dot-file source repo)

# Licence

Copyright (c) 2011-2012 François Saint-Jacques
Copyright (c) 2008-2011 Bodaniel Jeanes

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
