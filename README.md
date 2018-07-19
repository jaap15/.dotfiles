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

