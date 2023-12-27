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
alias v="vim"
alias ls="ls -F"
alias l="ls -F -o -a"
alias dotfiles="/usr/bin/git --git-dir=/Users/nihal/.dotfiles/ --work-tree=/Users/nihal"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias h="hugo serve"
lx() {
    pdflatex $1.tex
    biber $1
    pdflatex $1.tex
    pdflatex $1.tex
    open $1.pdf
}

g() {
    git add .
    git commit
    git push
}
bindkey -v
bindkey ^R history-incremental-search-backward
bindkey ^S history-incremental-search-forward
eval "$(pyenv init --path)"

