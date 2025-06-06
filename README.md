https://github.com/jackycamp/nvim/assets/26155547/cb86d8a0-4c11-448c-a02a-53526d1d5b58

# My neovim config

Neovim [LazyVim](https://github.com/LazyVim/LazyVim) for editing // [Kitty](https://sw.kovidgoyal.net/kitty/quickstart/) for the terminal.

I often switch between Linux (Debian) and MacOS for programming. This setup works well for both cases.

Before installing neovim and the neovim config, make sure you satisfy the [requirements](https://www.lazyvim.org/#%EF%B8%8F-requirements).

```bash
# to install on debian
sudo apt-get install fd-find

sudo apt-get install neovim
nvim -h

# to install on mac
# (system dependencies first)
brew install font-hack-nerd-font
brew install fzf
brew install ripgrep
brew install fd

# Then install neovim
curl -LO https://github.com/neovim/neovim/releases/download/v0.10.0/nvim-macos-arm64.tar.gz
curl -LO https://github.com/neovim/neovim/releases/download/v0.10.0/nvim-macos-arm64.tar.gz.sha256sum
shasum -a 256 -c nvim-macos-arm64.tar.gz.sha256sum
xattr -c nvim-macos-arm64.tar.gz

# you can also navigate to https://github.com/neovim/neovim/releases and browse
# releases. I've been on v0.10.0 for a bit.
tar xzf nvim-macos-arm64.tar.gz
./nvim-macos-arm64/bin/nvim -h

# recommend adding the nvim alias
echo "alias nvim='/Users/jack/nvim-macos-arm64/bin/nvim'" >> .zprofile
exec $SHELL
```

## nvim config installation

```bash
# as easy as:
git clone https://github.com/jackycamp/nvim.git ~/.config/nvim

```

## kitty config installation

Installing kitty is pretty straight-forward. Just follow the [instructions](https://sw.kovidgoyal.net/kitty/binary/#install-kitty).

Then you need to move a couple of things around.

```bash
# copy over the kitty config
cp ~/.config/nvim/kitty.conf ~/.config/kitty/

# and don't forget the sick background pic
cp ~/.config/nvim/choso-bg.png ~/choso-bg.png
```

Then launch neovim (in accordance with your host) and the config should load automatically!
