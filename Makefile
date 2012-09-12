install: init-submodules install-vim install-git install-screen install-zsh \
		 install-misc

init-submodules:
	git submodule update --init

install-git:
	ln -sf `pwd`/vcs/git/gitconfig ~/.gitconfig
	ln -sf `pwd`/vcs/git/gitignore ~/.gitignore

install-vim: init-submodules
	ln -sf `pwd`/editors/vim ~/.vim
	ln -sf `pwd`/editors/vim/vimrc ~/.vimrc
	ln -sf `pwd`/editors/vim/gvimrc ~/.gvimrc

install-screen:
	ln -sf `pwd`/shells/screen/screenrc ~/.screenrc

install-zsh: init-submodules
	ln -sf `pwd`/shells/zsh/zshrc ~/.zshrc
	ln -sf `pwd`/shells/zsh/lib/oh-my-zsh ~/.oh-my-zsh

install-misc:
	ln -sf `pwd`/misc/inputrc ~/.inputrc
