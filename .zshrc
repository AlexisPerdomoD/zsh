#!/bin/zsh
# xset r rate 100 60 
# if genome 
gsettings set org.gnome.desktop.peripherals.keyboard delay 150
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 18

BAT_THEME="DarkNeon"
# historial de comandos en file por si acaso
HISTFILE=~/.zsh_history
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
##  principal bins
if [ -f "$HOME/.config/zsh/exports.zsh" ]; then
	source "$HOME/.config/zsh/exports.zsh"
	#prompt theme
	source "$HOME/.config/zsh/prompts/starship.zsh"
fi
# colors
source "$HOME/.config/zsh/colors.zsh"
# aliases
if [ -f "$HOME/.config/zsh/aliases.zsh" ]; then
	source "$HOME/.config/zsh/aliases.zsh"
fi
# functions
if [ -f "$HOME/.config/zsh/functions.zsh" ]; then
	source "$HOME/.config/zsh/functions.zsh"
fi

# native autocompletado
source "$HOME/.config/zsh/post/autocomplete.export.zsh"
# lazy exports
# plugins from diferent repos will be loaded on zsh_async.zsh, config on plugins directory
source "$HOME/.config/zsh/post/zsh-async.zsh"
# post/npm.export.zsh
source "$HOME/.config/zsh/post/npm.export.zsh"

ZELLIJ_AUTO_ATTACH=true
fastfetch
print -n "HOLA MUNDO, TERMINAL READY \nUSUARIO: $USER"

