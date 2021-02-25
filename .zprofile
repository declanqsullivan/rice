#!/bin/zsh


# Add `~/.local/bin` to $PATH
export PATH="$PATH:${$(find ~/.local/bin -type d -printf %p:)%%:}"


# Set defaults
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="qutebrowser"


# Clean your damn ~room~ uhh home
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export LESSHISTFILE="-"
export HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/history"

export INPUTRC="${XDG_CONFIG_HOME:-$HOME/.config}/shell/inputrc"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"

export GNUPGHOME="${XDG_DATA_HOME:-$HOME/.local/share}/gnupg"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/password-store"

export TMUX_TMPDIR="$XDG_RUNTIME_DIR"
export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"

#
# Switch Escape and Caps if tty and no passwd required:
sudo -n loadkeys ${XDG_DATA_HOME:-$HOME/.config}/keymap.kmap 2>/dev/null
