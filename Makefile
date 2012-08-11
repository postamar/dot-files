install: init-submodules install-vim install-git install-screen install-zsh

init-submodules:
	git submodule update --init

install-git:
	ln -sf `pwd`/vcs/git/gitconfig ~/.gitconfig
	ln -sf `pwd`/vcs/git/gitignore ~/.gitignore

install-vim:
	ln -sf `pwd`/editors/vim ~/.vim
	ln -sf `pwd`/editors/vimrc ~/.vimrc
	ln -sf `pwd`/editors/gvimrc ~/.gvimrc

install-screen:
	ln -sf `pwd`/shells/screen/screenrc ~/.screenrc

install-zsh:
	ln -sf `pwd`/shells/zsh/zshrc ~/.zshrc
	ln -sf `pwd`/shells/zsh/lib/oh-my-zsh ~/.oh-my-zsh
