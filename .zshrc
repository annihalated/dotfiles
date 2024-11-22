autoload -U compinit
compinit

export EDITOR=vim
export GIT_EDITOR=vim

# Load VCS info
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:*' formats ' (%F{green}%b%f)'
zstyle ':vcs_info:*' enable git
setopt prompt_subst

# Prompt
PS1='%F{blue}%n%f:%F{red}%m%f %F{blue}%~%f${vcs_info_msg_0_} $ '

# More completions
fpath=(~/.zsh/custom/plugins/zsh-completions/src $fpath)

# Syntax highlighting
source $HOME/.zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Variables
PROJECTS_DIR="$HOME/projects"
DOTFILES_DIR="$HOME/.dotfiles"

# Homebrew
export PATH="/opt/homebrew/bin:$PATH"

# NVM 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Go 
export PATH="$GOPATH/bin:$PATH"
export GOPATH="$HOME/.config/go"

# Aliases
alias v="vim"
alias g="git"
alias .z="vim ~/.dotfiles/.zshrc"
alias .v="vim ~/.dotfiles/.vimrc"
alias .g="vim ~/.dotfiles/.gitconfig"
alias invoice="$PROJECTS_DIR/invoice/generate_invoice.sh"
# Git aliases
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gco='git checkout '
# eval "$(rbenv init - --no-rehash zsh)"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
