# Variables
PROJECTS_DIR="$HOME/projects"

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
alias invoice="$PROJECTS_DIR/invoice/generate_invoice.sh"

