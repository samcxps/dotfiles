# The Bruhfiles

## How to use this stuff

- Clone repo
- Create symlinks (~/.config/ -> ~/dotfiles/.config/)
- Run brew bundle on Brewfile
- See individual sections for specific installation instructions

## Shell Setup

- Kitty (terminal emulator)
- Fish (shell)
- Fisher (fish plugin manager)
- TideV5 (custom fish prompt)
- Z (smart directory jumping)
- Exa (fun ls alternative with icons)
- Hack nerd font (for exa icons)
- Fira nerd font for text

### Install Instructions

- Change fish to default shell
- Install fisher
- Install TideV5 with fisher

## VIM

Based on [EcoVim](https://github.com/ecosse3/nvim) but slimmed down because that one makes my brain hurt + uses stuff I do not want

- NeoVim (nightly version)
- Packer (plugin manager)

### Install Instructions

- Fresh install of neovim (should have been installed via Brewfile)
- If you already had Neovim setup, make sure to clear cache and clean any old plugins

```
rm -rf ~/.local/share/nvim/
rm -rf ~/.cache/nvim/
```

- Make sure symlinks are correct
- Execute `./run.sh` (might need to `chmod +x run.sh`)
