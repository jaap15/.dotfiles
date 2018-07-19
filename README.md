# Setup

Create symbolic link so that ~/.vimrc points to the ~/dotfiles/.vimrc file:
`ln -s ~/.dotfiles/vim/vimrc.vim ~/.vimrc`

Create symbolic link so that ~/.vim/ points to the ~/dotfiles/vim/plugins/ file: (Will not create link if ~/.vim already exists, remove ~/.vim)
`ln -s ~/.dotfiles/vim/plugins ~/.vim`

Get all the plugins from their git repos:
`cd ~/dotfiles`
`git submodule init`
`git submodule update`

# Load vim config

echo "so ~/.dotfiles/vim/vimrc.vim" > ~/.vimrc


# Load tmux config

echo "source-file ~/.dotfiles/tmux/tmux.conf" > ~/.tmux.conf

# Load zsh config

echo "source ~/.dotfiles/zsh/zshrc_manager.sh" > ~/.zshrc

# Update submodule
git submodule update --init --recursive


# Install zsh
`sudo apt-get update
sudo apt-get upgrade
sudo apt-get install zsh` 

# Install tmux
`sudo apt-get install tmux`

# Misc

Remove a git submodule
`git rm --cached the_submodule`
`rm -rf .git/modules/the_submodule`

Add submodule
`cd into folder you want the submodule`
`git submodule add url.git` 

# Credits
https://github.com/Parth/dotfiles
https://github.com/MitchellMcKenna/dotfiles
