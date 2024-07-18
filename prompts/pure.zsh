# post/pure.zsh
if [[ ! -e ~/.config/zsh/dependencies/pure ]]; then
	git clone https://github.com/sindresorhus/pure.git "$HOME/.config/zsh/dependencies/pure"
fi

fpath+=($HOME/.config/zsh/dependencies/pure)

zstyle :prompt:pure:git:stash show yes
autoload -U promptinit
promptinit

prompt pure
