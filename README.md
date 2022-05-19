# The Bruhfiles

A work in progress.

## How to use this stuff

- Clone repo
- Create symlinks as needed (need ---/dotfiles/.config --> ~/.config)
- Run `brew bundle` on Brewfile
- See individual sections for specific installation instructions

## Shell Setup

- [Kitty](https://sw.kovidgoyal.net/kitty/) - Terminal emulator
- [Fish](https://fishshell.com/) - Shell
- [Fisher](https://github.com/jorgebucaran/fisher) - Fish plugin manager
- [Tide](https://github.com/IlanCosman/tide) - Custom fish prompt
- [Z](https://github.com/jethrokuan/z) - Smart directory jumping
- [Exa](https://github.com/ogham/exa) - Better `ls`
- [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts) - Icons and terminal font

### Install Instructions

- Fish _should_ have been installed via `brew bundle` but double check
- Change fish to default shell
- Install [fisher](https://github.com/jorgebucaran/fisher)
- Install [Tide@v5](https://github.com/IlanCosman/tide)
- Install [z](https://github.com/jethrokuan/z)
- Use [kitty](https://sw.kovidgoyal.net/kitty/) instead of default terminal app
- Done

## (NEO)VIM

Inspired by [EcoVim](https://github.com/ecosse3/nvim) but very slimmed down

- [NeoVim](https://neovim.io/) - Better VIM
- [Packer](https://github.com/wbthomason/packer.nvim) - Plugin manager
- See [plugins.lua](https://github.com/samcxps/dotfiles/blob/main/.config/nvim/lua/plugins.lua) file for breakdown of plugins

### Install Instructions

- NeoVim _should_ have been installed via `brew bundle` but double check
- If you already had a NeoVim setup, make sure to clean cache and old plugins

```
rm -rf ~/.local/share/nvim/
rm -rf ~/.cache/nvim/
```

- Install [Packer](https://github.com/wbthomason/packer.nvim#quickstart) 
- Make sure symlinks are correct
- Execute `./run.sh` (might need to `chmod +x run.sh`)
