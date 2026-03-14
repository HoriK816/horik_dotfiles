# oh-my-zsh 
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# auto update every 10 days
zstyle ':omz:update' mode auto      
zstyle ':omz:update' frequency 10

# theme
ZSH_THEME="eastwood"

# editor
export EDITOR="vim"

# language
export LANG=en_US.UTF-8

# search path 
export BINPTH="$HOME/bin/:$PATH"
export MANPATH="/usr/local/man:$MANPATH"

claude_path="$HOME/.local/bin"
export PATH="$claude_path:$PATH" 

# history
HISTIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_DUPS SHARE_HISTORY

# matching 
CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"

# completion
autoload -U compinit && compinit

# disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# format for time stamp
HIST_STAMPS="yyyy-mm-dd"

# alias
alias python="python3"
alias gs="git status"
alias gd="git diff"
alias ga="git add"
alias gc="git commit"

# plugins
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting)

