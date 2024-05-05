# My neovim config

Uses [LazyVim](https://github.com/LazyVim/LazyVim) under the hood.

I also use [Kitty](https://sw.kovidgoyal.net/kitty/quickstart/) as my terminal.

I use Neovim on my mac and debian machines.

```bash
# to install on debian
sudo apt-get install neovim
nvim -h

# mac (i do not recommend homebrew)
curl -LO https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-macos.tar.gz
tar xzf nvim-macos.tar.gz
./nvim-macos/bin/nvim -h
```

## Installation

```bash
# the .config dir should already exist
cd ~/.config
# clone this repo
git clone https://github.com/jackycamp/nvim.git
```

Then launch neovim (in accordance with your host) and the config should load automatically!
