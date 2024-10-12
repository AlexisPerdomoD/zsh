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
# dotnet
export PATH="$PATH:/usr/share/dotnet"
# Required setup for dotnet
# dotnet --list-runtimes
# Microsoft.AspNetCore.App 8.0.8 [/usr/share/dotnet/shared/Microsoft.AspNetCore.App]
# Microsoft.NETCore.App 6.0.33 [/usr/share/dotnet/shared/Microsoft.NETCore.App]
# Microsoft.NETCore.App 8.0.8 [/usr/share/dotnet/shared/Microsoft.NETCore.App]

# brew
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# fzf integration 
eval "$(fzf --zsh)"
# rust 
# source $HOME/.cargo/env
fpath+=${ZDOTDIR:-~}/.zsh_functions

