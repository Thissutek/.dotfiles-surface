#!/bin/bash

SESSION_NAME="next-app"
TMUX_CONF="$HOME/.tmux.conf"

# Kill session if it already exists
tmux has-session -t "$SESSION_NAME" 2>/dev/null && tmux kill-session -t "$SESSION_NAME"

# Start session with custom tmux.conf and base index 1
tmux -f "$TMUX_CONF" new-session -d -s "$SESSION_NAME" -n editor 'nvim'

# Create second window for npm install or npm run dev
tmux new-window -t "$SESSION_NAME:2" -n server 'if [ -f package-lock.json ] || [ -d node_modules ]; then npm run dev; else npm install && npm run dev; fi'

# Third window for lazygit
tmux new-window -t "$SESSION_NAME:3" -n git 'lazygit'

# Fourth window for CLI tools
tmux new-window -t "$SESSION_NAME:4" -n shell 'bash'

# Attach to session
tmux attach-session -t "$SESSION_NAME"

