# Setup
Clone repo in ~/
Do the following:
- Install tmux
- Install zsh
- Load vim config
- Load tmux config
- Get all the plugins from their git repos:
- Load vim plugins

# Load vim config

Create symbolic link so that ~/.vimrc points to the ~/dotfiles/.vimrc file:
`ln -s ~/.dotfiles/vim/vimrc.vim ~/.vimrc`

Create symbolic link so that ~/.vim/ points to the ~/dotfiles/vim/plugins/ file: (Will not create link if ~/.vim already exists, remove ~/.vim)
`ln -s ~/.dotfiles/vim/plugins ~/.vim`

# Load tmux config

echo "source-file ~/.dotfiles/tmux/tmux.conf" > ~/.tmux.conf

# Get all the plugins from their git repos:

`cd ~/.dotfiles`
`git submodule update --init --recursive`

# Load vim plugins
Load YouCompleteMe
`sudo apt-get install build-essential cmake`
`sudo apt-get install python-dev python3-dev`
`cd ~/.vim/bundle/YouCompleteMe`
`./install.py --clang-completer`

# Install Vundle Plugins
Make sure to have updated the submodules
In vim do `:PluginInstall`

# Load zsh config

echo "source ~/.dotfiles/zsh/zshrc_manager.sh" > ~/.zshrc

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
