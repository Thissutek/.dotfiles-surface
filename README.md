# .dotfiles-surface

Personal dotfiles and system configuration for my Surface Pro running Linux. This setup includes everything I use for development, terminal customization (ricing), and workflow automation.

## Structure

This repo is meant to be the **source of truth** for all configs I use on this machine. I use symlinks to keep system files pointing here.

~/.config/nvim → .dotfiles-surface/nvim
~/.tmux.conf → .dotfiles-surface/tmux/.tmux.conf
~/.config/polybar → .dotfiles-surface/polybar
~/.config/rofi → .dotfiles-surface/rofi
~/.config/i3 → .dotfiles-surface/i3

## Whats Included
Neovim with custom plugins with catppuccin theme NVchad configs
Tmux configured with TPM with catppuccin + sane keybinds
Polybar riced to match color scheme
i3wm configured for keyboard-driven workflow
Rofi used for wifi menu and app launcher via dmenu


## Notes
Symlinks keep the system clean and everything version controlled.

Scripts for tmux sessions (like start-next-app.sh) live in scripts/.

Separate dotfiles repos are maintained for other devices to keep setups clean.


## Setup

1. Clone the repo:

```bash
git clone https://github.com/your-username/.dotfiles-surface.git ~/.dotfiles-surface


ln -s ~/.dotfiles-surface/nvim ~/.config/nvim
ln -s ~/.dotfiles-surface/tmux/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles-surface/polybar ~/.config/polybar
ln -s ~/.dotfiles-surface/rofi ~/.config/rofi
ln -s ~/.dotfiles-surface/i3 ~/.config/i3



