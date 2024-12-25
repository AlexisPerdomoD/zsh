#!/bin/zsh
# xset r rate 100 60 

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
# if ! pgrep -u $USER -x zsh >/dev/null 2>&1; then
# tmux 
# if [[ $TERM = "xterm-kitty" ]]; then;
#     tmux new -s $USER || tmux
# fi

# zellij
ZELLIJ_AUTO_ATTACH=true
# ZJ_SESSIONS=$(zellij list-sessions)
# NO_SESSIONS=$(echo "${ZJ_SESSIONS}" | wc -l)
#
# if [ "${NO_SESSIONS}" -ge 2 ]; then
#     zellij attach \
#     "$(echo "${ZJ_SESSIONS}" | sk)"
# else
#    zellij attach -c
# fi
#
# eval "$(zellij setup --generate-auto-start zsh)"
fastfetch
print -n "HOLA MUNDO, TERMINAL READY \nUSUARIO: $USER"
# fi
# completar en la terminal
export TERMINAL="alacritty"
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_QPA_PLATFORM=wayland

