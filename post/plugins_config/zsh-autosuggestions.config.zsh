# post/plugins_config/zsh-autosuggestions.config.zsh
### custom callback for zsh-autosuggestions to be used in zsh_async
### DEPENDENCIES_DIR="$HOME/.config/zsh/dependencies/"
zsh-autosuggestions_cb() {
	# zsh-autosuggestions config

	# source
	eval "source  $DEPENDENCIES_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh"
	# finalize
	async_stop_worker zsh-autosuggestions_worker
}
