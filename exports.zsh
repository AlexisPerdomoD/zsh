# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
### BINS PATHS EXPORTS ###
### terminal emulator ###
# kitty
export PATH=$HOME/.local/kitty.app/bin:$PATH
# wezterm
export LUA_PATH=$HOME/.config/wezterm/wezterm.lua:$LUA_PATH
# neovim
export PATH=$HOME/.local/share/nvim/mason/bin:$PATH
# fzf integration
eval "$(fzf --zsh)"
fpath+=${ZDOTDIR:-~}/.zsh_functions
