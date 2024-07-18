#!/bin/zsh
# colors.zsh
### Habilitar colores en zsh para ls ###
autoload -U colors && colors

# Configuración de LS_COLORS en tonos grises
# export LS_COLORS='di=1;36:ln=1;34:so=1;35:pi=1;33:ex=1;32:bd=1;31:cd=1;30:su=1;30:sg=1;30:tw=1;30:ow=1;30'
# Configuración de LS_COLORS chatgpt 
# export LS_COLORS='di=1;34:ln=1;36:so=1;35:pi=1;33:ex=1;32:bd=1;34:cd=1;34:su=1;31:sg=1;31:tw=1;34:ow=1;34'
# Aplicar LS_COLORS al autocompletado
 zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

### fzf 
## Configuración de colores para fzf en tonos plateado y azul luna
# export FZF_DEFAULT_OPTS='
#   --color=fg:#dcdcdc,bg:#1c1c1c,hl:#569cd6,hl+:#569cd6
#   --color=info:#569cd6,prompt:#569cd6,pointer:#dcdcdc
#   --color=marker:#569cd6,spinner:#569cd6,header:#dcdcdc'
#
# configuracion colores fzf chatgpt
# export FZF_DEFAULT_OPTS='
#   --color=fg:#dcdcdc,bg:#1c1c1c,hl:#569cd6,hl+:#569cd6
#   --color=info:#569cd6,prompt:#569cd6,pointer:#dcdcdc
#   --color=marker:#569cd6,spinner:#569cd6,header:#dcdcdc'
# # Opciones adicionales de fzf según tus preferencias

