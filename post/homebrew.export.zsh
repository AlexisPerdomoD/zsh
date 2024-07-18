# post/homebrew.export.zsh
# just reference, already load in start up
local is_loaded=false
export_brew_binaries() {
        local last=$(last_cmd)
        # leer linea por linea los comandos de /home/linuxbrew/.linuxbrew/bin
        while IFS= read -r bin; do
            if [[ "$last" == "$bin" ]]; then
                if [[ "$is_loaded" == false ]]; then 
                    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
                is_loaded=true
                print "$bin"
                print "$last" 
                fi
                break
            fi
        done < <(ls -1 /home/linuxbrew/.linuxbrew/bin)  # Capturar 
}
