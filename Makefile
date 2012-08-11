install: init-submodules install-vim install-git install-screen install-zsh

init-submodules:
	git submodule update --init

install-git:
	ln -s vcs/git/gitconfig ~/.gitconfig
	ln -s vcs/git/gitignore ~/.gitignore

install-vim:
	ln -s editors/vim ~/.vim
	ln -s editors/vimrc ~/.vimrc
	ln -s editors/gvimrc ~/.gvimrc

install-screen:
	ln -s shells/screen/screenrc ~/.screenrc

install-zsh:
	ln -s shells/zsh/zshrc ~/.zshrc
	ln -s shells/zsh/lib/oh-my-zsh ~/.oh-my-zsh
