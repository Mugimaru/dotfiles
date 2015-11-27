# vim
ln -sf `pwd`/vim/vimrc ~/.vimrc
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# tmux
ln -sf `pwd`/tmux/tmux.conf ~/.tmux.conf

# zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git `pwd`/zsh/oh-my-zsh
ln -sf `pwd`/zsh/mugimaru.zsh-theme `pwd`/zsh/oh-my-zsh/themes/mugimaru.zsh-theme
ln -sf `pwd`/zsh/zshrc ~/.zshrc

# git
ln -sf `pwd`/git/gitconfig ~/.gitconfig

