# Load vim config

echo "so ~/.dotfiles/vim/vimrc.vim" > ~/.vimrc


# Load tmux config

echo "source-file ~/.dotfiles/tmux/tmux.conf" > ~/.tmux.conf

# Update submodule
git submodule update --init --recursive


# Install zsh
`sudo apt-get update
sudo apt-get upgrade
sudo apt-get install zsh` 

# Install tmux
`sudo apt-get install tmux`

