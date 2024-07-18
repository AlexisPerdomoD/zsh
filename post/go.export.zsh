# post/go.export.zsh
# just reference, already load with brew binaries 
local is_loaded=false
get_go() {
	local last=$(last_cmd)
	if [[ "$last" == "go" ]]; then
		if [[ "$is_loaded" == false ]]; then
			# golang
			# Agregar la ruta de Go al PATH
			export PATH="$PATH:/usr/local/go/bin"
			# Agregar la ruta de Wails al PATH
			export PATH="$PATH:$HOME/go/bin"
			export GOMODCACHE=$HOME/go/pkg/mod
			export GO111MODULE=on
			is_loaded=true
			print "Golang cargado"
		fi
	fi
}
