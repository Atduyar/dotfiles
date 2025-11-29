if [ -s "$HOME/.cargo/env" ]; then
	. "$HOME/.cargo/env"
fi

# XDG
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$HOME/.cache
export XDG_STATE_HOME=$HOME/.local/state

# editor
export EDITOR="nvim"
export VISUAL="nvim"
export MANPAGER='nvim +Man!'

# Zsh
export ZDOTDIR=${ZDOTDIR:-$XDG_CONFIG_HOME/zsh}
export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000

# Local bin
if [ -d "$HOME/.local/bin" ]; then
	export PATH=$HOME/.local/bin:$PATH
fi

# Added for go
if [ -d "/usr/local/go" ]; then
	export PATH=$PATH:/usr/local/go/bin
	export PATH=$PATH:$HOME/go/bin
fi

# Added for dotnet
if [ -d "$HOME/.dotnet/tools/" ]; then
	export PATH=$PATH:$HOME/.dotnet/tools/
fi

# Added for gradle
if [ -d "/opt/gradle/gradle-9.1.0/" ]; then
	export PATH=$PATH:/opt/gradle/gradle-9.1.0/bin
fi

# For uv
if [ -f "$HOME/.local/bin/env" ]; then
	. "$HOME/.local/bin/env"
fi
