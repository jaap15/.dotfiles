#Load vim config

echo "so ~/.dotfiles/vim/vimrc.vim" > ~/.vimrc


#Load tmux config

echo "source-file ~/.dotfiles/tmux/tmux.conf" > ~/.tmux.conf

#Update submodule
git submodule update --init --recursive
