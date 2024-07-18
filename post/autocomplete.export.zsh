#!/bin/zsh
# /home/sixela/.config/zsh/post/autocomplete.export.zsh

# Habilitar autocompletado
autoload -Uz compinit
compinit

# Opciones de autocompletado
# Use menú selectivo de autocompletado
zstyle ':completion:*' menu select

# Mostrar una lista de coincidencias posibles automáticamente
zstyle ':completion:*' auto-list true

# Intentar autocompletar con la opción más probable si no hay coincidencias exactas
zstyle ':completion:*' completer _complete _ignored _approximate

# Mostrar descripciones de opciones y argumentos
zstyle ':completion:*' format '%B%d%b'

# Aceptar autocompletado parcial en medio de una palabra
zstyle ':completion:*' accept-exact true

# Caso insensible al autocompletar
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Activar la terminación de comandos y parámetros de shell con tab
bindkey '^I' expand-or-complete

# Activar autocompletado por globbing (comodines)
setopt complete_in_word

# Habilitar corrección ortográfica
setopt correct

# Configuración de ignorar errores ortográficos comunes
zstyle ':completion:*' completer _complete _correct _approximate

# Permitir mostrar coincidencias ambiguas
setopt menucomplete

# Configuración de colores para el menú de autocompletado
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%B%d%b'
zstyle ':completion:*:warnings' format '%B%d%b'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s

