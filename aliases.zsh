# open editors on directories 
alias v="nvim ."
alias c="code . --profile m"
alias z='zellij a'
# fzf
# abrir archivo con nvim 
alias vf='nvim $(fzf --preview "batcat --style=numbers --color=always {}" --preview-window=up:65%)'
alias vwf='nvim $(find "${HOME}/work" -type f | fzf --preview="batcat --style=numbers --color=always {}" --preview-window=up:65%)'
# abrir archivo en vim siempre desde home 
alias vfG='nvim $(find "$HOME" -type f | fzf --preview="batcat --style=numbers --color=always {}" --preview-window=up:65%)'
# mostrar historial de comandos y selecionar uno y escribirlo en la terminal

# abrir directorio con nvim 
alias vd='cd $(find . -type d | fzf -e) && nvim .'
alias vwd='cd $(find "$HOME/work" -type d | fzf -e) && nvim .'
alias vdG='cd $(find "$HOME" -type d | fzf -e) && nvim .'

# go directory 
alias gd='cd $(find . -type d | fzf -e)'
alias gwd='cd $(find "$HOME/work" -type d | fzf -e)'
alias gdG='cd $(find "$HOME" -type d | fzf -e)'

# remove a file 
alias rfile='rm -i $(find . -type f | fzf --preview="batcat --style=numbers --color=always {}" --preview-window=up:75%)'

# copiar ruta a clipboard 
alias fcp='fzf | xargs -I {} echo -n $(realpath {}) | xclip -selection clipboard'

# copiar archivo en directorio actual desde cualquier directorio hijo 
alias copyme='cp $(fzf --preview="batcat --style=numbers --color=always {}" --preview-window=up:50%) .'
alias moveme='mv $(fzf --preview="batcat --style=numbers --color=always {}" --preview-window=up:50%) .'
alias copymeG='cp $(find "$HOME" -type f | fzf --preview="batcat --style=numbers --color=always {}" --preview-window=up:75%) .'
alias movemeG='mv $(find "$HOME" -type f | fzf --preview="batcat --style=numbers --color=always {}" --preview-window=up:75%) .'
alias killl='kill -9 **'
#listado directorios visualmente mas comodos 
alias la='ls -lAhF --color=auto --block-size=K --group-directories-first'
alias al='ls -lhF --color=auto --block-size=K --group-directories-first'
alias L='ls -ChF  --color=auto --block-size=K --group-directories-first'
# Alias mejorado para 'du' con profundidad máxima de 1
alias du='du -h --max-depth=1'

# limpiar cache 
alias limpia-cache-en-ram='sudo sync; echo 3 | sudo tee /proc/sys/vm/drop_caches'

# docker
alias dockerpostgres='docker run --rm --name base -e POSTGRES_PASSWORD=password -d -p 5432:5432 postgres'
alias pgbase='docker exec -it base psql -h localhost -p 5432 -U postgres -d base'
