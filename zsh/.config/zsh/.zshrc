# Autoloads
autoload run-help
unalias run-help

# Auto Complation
fpath=($ZDOTDIR/plugins/zsh-completions/src $fpath)
autoload -Uz compinit && compinit

# Emacs keymap
bindkey -e
# Up and Down arrow control
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down
# VSCode like Ctrl + [Left, Right] 
bindkey "^[[1;5C" emacs-forward-word
bindkey "^[[1;5D" backward-word
 
# Prompt
autoload -Uz add-zsh-hook vcs_info
setopt prompt_subst
add-zsh-hook precmd vcs_info
zstyle ':vcs_info:git*' formats " %F{blue}%b%f %m%u%c %a "
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr ' %F{green}✚%f'
zstyle ':vcs_info:*' unstagedstr ' %F{red}●%f'

precmd() {
    vcs_info
    print -P '%B%~%b ${vcs_info_msg_0_}'
}

# PROMPT='%B%(!.{red}#.{blue}λ)%b '
PROMPT='%B%(!.%F{red}#%f.%F{blue}λ%f)%b '
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
#
# plugins=(
# 	z
# 	git
# 	zsh-autosuggestions
# 	sudo
# 	web-search
# 	jsontools
# 	copyfile
# )
#
# source $ZSH/oh-my-zsh.sh

source "$ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias vim="nvim"
alias vi="nvim"
alias v="nvim"
alias l="ll -a"

fastfetch
