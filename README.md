https://github.com/jackycamp/nvim/assets/26155547/cb86d8a0-4c11-448c-a02a-53526d1d5b58

# My neovim config

Neovim [LazyVim](https://github.com/LazyVim/LazyVim) for editing // [Kitty](https://sw.kovidgoyal.net/kitty/quickstart/) for the terminal.

I often switch between Linux (Debian) and MacOS for programming. This setup works well for both cases.

```bash
# to install on debian
sudo apt-get install fd-find

sudo apt-get install neovim
nvim -h

# mac (i do not recommend homebrew)
curl -LO https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-macos.tar.gz
tar xzf nvim-macos.tar.gz
./nvim-macos/bin/nvim -h
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
