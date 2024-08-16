if [ -s "$HOME/.cargo/env" ]; then
	. "$HOME/.cargo/env"
fi

# Added for go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin

# Added for dotnet
export PATH="$PATH:$HOME/.dotnet/tools/"

# Local bin
export PATH=$HOME/.local/bin:$PATH
