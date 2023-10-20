setopt autocd  
eval "$(/opt/homebrew/bin/brew shellenv)"

# Setting up and styling the prompt
fpath+=($HOME/.zsh/pure)
autoload -Uz promptinit
promptinit
prompt pure
zstyle :prompt:pure:prompt:error color '#ff5c57'
zstyle :prompt:pure:prompt:success color '#ff6ac1'
zstyle :prompt:pure:path color '#57c7ff'

zstyle ':prompt:pure:git:*' color '#6c6c6c'
zstyle :prompt:pure:git:arrow color '#9aedff'

# Aliases
alias ls="ls -F"
alias l="ls -F -o -a"
alias dotfiles="/usr/bin/git --git-dir=/Users/nihal/.dotfiles/ --work-tree=/Users/nihal"
