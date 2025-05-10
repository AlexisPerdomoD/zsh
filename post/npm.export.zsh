# post/npm.export.zsh
autoload -Uz add-zsh-hook
get_npm() {
    local last="${1%% *}"
    if [[ "$last" == "vd" || "$last" == "v" || "$last" == "nvim" || "$last" == "npm" || "$last" == "npx" || "$last" == "node" || "$last" == "nvm" ]]; then
        if [[ "$is_loaded" == false ]]; then
            export NVM_DIR="$HOME/.nvm"
            [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
            [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
            print "NPM cargado"
        fi
    fi

}
export -F get_npm
add-zsh-hook preexec get_npm
