# post/npm.export.zsh
autoload -Uz add-zsh-hook
local is_loaded=false
get_npm() {
	local last="${1%% *}"
	if [[ "$last" == "vd" || "$last" == "v" || "$last" == "nvim" || "$last" == "npm" || "$last" == "npx" || "$last" == "node" || "$last" == "nvm" ]]; then
		if [[ "$is_loaded" == false ]]; then
			# npm
			# Agregar la ruta de NPM al PATH
			export NVM_DIR="$HOME/.nvm"
			[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
			[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
			is_loaded=true
			print "NPM cargado"
		fi
	fi

}
export -F get_npm
add-zsh-hook preexec get_npm
