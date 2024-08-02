if [[ ! -e ~/.config/zsh/dependencies/zsh-async/async.zsh ]]; then
	git clone -b 'v1.5.2' https://github.com/mafredri/zsh-async.git ~/.config/zsh/dependencies/zsh-async
fi
DEPENDENCIES_DIR="$HOME/.config/zsh/dependencies"
CONFIG_DIR="$HOME/.config/zsh/post/plugins_config"
source ~/.config/zsh/dependencies/zsh-async/async.zsh
# start

async_init
### zsh-autosuggestions plugin
source ${CONFIG_DIR}/zsh-autosuggestions.config.zsh

async_start_worker zsh-autosuggestions_worker -n
async_register_callback zsh-autosuggestions_worker zsh-autosuggestions_cb
async_job zsh-autosuggestions_worker clone_repo "https://github.com/zsh-users/zsh-autosuggestions" "${DEPENDENCIES_DIR}/zsh-autosuggestions" "zsh-autosuggestions.zsh"

#### REFERENCE ####
# workers
# check_repos_worker
# async_start_worker source_repo_worker -n
# async_register_callback source_repo_worker source_repo_cb
# # jobs
# async_job source_repo_worker clone_repo "https://github.com/marlonrichert/zsh-autocomplete.git" "$HOME/.config/zsh/dependencies/zsh-autocomplete" "zsh-autocomplete.plugin.zsh"
#
