## custom hooks
# check preview
setPreview() {
	local width=$COLUMNS
	local preview_option
	if [[ "$width" < 100 ]]; then
		preview_option="--preview-window=up:70%"
	else
		preview_option="--preview-window=side:50%"
	fi
	echo $preview_option
}
export -F setPreview

# source repo ASYNC
source_repo_cb() {
	print "${1} process done"
	# source "${2}/${3}"
}
# params:
# 1$ URL
# 2$ PATH
# 3$ NAME
clone_repo() {
	#local is_loaded=false
	if [[ ! -e "${2}" ]]; then
		echo "cloning ${1} to ${2}"
		git clone --depth 1 -- "${1}" "${2}"
	fi
	print "${3} loaded"
	source "${2}/${3}"
}
export -F clone_repo

### add-zsh-hook REFERENCE ###
# autoload -Uz add-zsh-hook #cargar metodo para agregar hooks a eventos

# add-zsh-hook zshaddhistory lazy_loader

# add-zsh-hook

# Se ejecuta antes de mostrar cada prompt.
# add-zsh-hook precmd nombre_de_funcion

# Se ejecuta antes de ejecutar un comando.
# add-zsh-hook preexec nombre_de_funcion

# Se ejecuta cada vez que se cambia el directorio actual.
# add-zsh-hook chpwd nombre_de_funcion

# Se ejecuta antes de salir de Zsh.
# add-zsh-hook zshexit nombre_de_funcion

# Se ejecuta después de que un comando es agregado al historial.
# add-zsh-hook zshaddhistory nombre_de_funcion

# Se ejecuta periódicamente si TMOUT está configurado.
# add-zsh-hook periodic nombre_de_funcion

# Se ejecuta antes de la ejecución de la función precmd.
# add-zsh-hook precmd_execution nombre_de_funcion

# Se ejecuta antes de la ejecución de la función preexec.
# add-zsh-hook preexec_execution nombre_de_funcion
# 1$ es el comando que se ejecuta en el shell
# 2$ es el directorio actual
#
# Se ejecuta cuando el directorio actual ha cambiado.
# add-zsh-hook zsh_directory_changed nombre_de_funcion

# Se ejecuta cuando un comando no es encontrado.
# add-zsh-hook zsh_command_not_found nombre_de_funcion
