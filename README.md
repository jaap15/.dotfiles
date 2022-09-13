# Setup
Clone repo in ~/
Do the following:
- Get all the plugins from their git repos:
- Install tmux
- Install neovim
- Load tmux config

- Load vim config
- Misc


# Get all the plugins from their git repos:

`cd ~/.dotfiles`

`git submodule update --init --recursive`

# Install tmux
`sudo apt-get install tmux`

# Install neovim

`sudo apt install neovim -y`

# Load tmux config

`echo "source-file ~/.dotfiles/tmux/tmux.conf" > ~/.tmux.conf`

# Load neovim config

Create symbolic link so that ~/.config/nvim points to the ~/dotfiles/nvim directory:

`ln -s ~/.dotfiles/nvim ~/.config/nvim`

Please install the following packages:

```bash
sudo apt install ripgrep
```

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
