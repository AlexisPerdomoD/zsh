#!/bin/zsh
BAT_THEME="DarkNeon"
# historial de comandos en file por si acaso
HISTFILE=~/.config/zsh/history
HISTSIZE=3000
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
# source
# prompt theme
source "$HOME/.config/zsh/prompts/starship.zsh"
# colors
source "$HOME/.config/zsh/colors.zsh"
# aliases
source "$HOME/.config/zsh/aliases.zsh"
# native autocompletado
source "$HOME/.config/zsh/post/autocomplete.export.zsh"
# kitty
# export PATH=$HOME/.local/kitty.app/bin:$PATH
eval "$(fzf --zsh)"
# zellij
ZELLIJ_AUTO_ATTACH=true
fastfetch --lib-wayland true --bright-color true --temp-unit C --lib-ddcutil true --gpu-temp true --gpu-driver-specific true --cpu-temp true
print -n "HOLA MUNDO, TERMINAL READY \nUSUARIO: $USER"
# completar en la terminal
export TERMINAL="alacritty"
