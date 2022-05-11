# The Bruhfiles

You are the ![visi](https://visitor-badge.glitch.me/badge?page_id=page.id) bruh

## How to use this stuff

- Clone repo
- Create symlinks as needed (need ---/dotfiles/.config --> ~/.config)
- Run `brew bundle` on Brewfile
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

- Fish _should_ have been installed via `brew bundle` but double check
- Change fish to default shell
- Install [fisher](https://github.com/jorgebucaran/fisher)
- Install [Tide@v5](https://github.com/IlanCosman/tide)
- Install [z](https://github.com/jethrokuan/z)

## (NEO)VIM

Inspired by [EcoVim](https://github.com/ecosse3/nvim) but very slimmed down

- NeoVim (nightly version)
- Packer (plugin manager)
- Lots of cool UI and QOL improvements

### Install Instructions

- Fresh install of neovim (should have been installed via Brewfile)
- If you already had Neovim setup, make sure to clear cache and clean any old plugins

```
rm -rf ~/.local/share/nvim/
rm -rf ~/.cache/nvim/
```

- Make sure symlinks are correct
- Execute `./run.sh` (might need to `chmod +x run.sh`)
