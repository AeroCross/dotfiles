# ================================
# Aliases
# Note: These use scripts in .dotfiles/bin/
# ================================
# Shell overrides
alias ls="eza -lah --no-user --no-permissions --sort type"
alias ll="ls"
alias cat="bat"
alias grep="ugrep"
alias reload="source ~/.zshrc"

# Apps
alias n="nvim"
alias k="clear"
alias lg="lazygit"

# Chezmoi
alias cm="chezmoi"
alias cma="chezmoi add"
alias cme="chezmoi edit"
alias cmea="chezmoi edit --apply"
alias cmap="chezmoi apply"

# Config
alias config="cmea ~/.zshrc"
alias config-idea="cmea ~/.ideavimrc"

# Git
alias ga="git add"
alias gss="git status --short"
alias gst="git stash"
alias gstp="git stash pop"
alias gsta="git stash apply"
alias gstl="git stash list"
alias gstd="git stash drop"
alias gp="git push"
alias gf="git fetch"
alias gco="git checkout"
alias grh="git reset --hard"
alias gc="git commit"
alias gca="git commit --amend"
alias gb="git branch"

# TODO: This is macOS specific, move to Template
alias mine="open -na RubyMine.app --args \"$@\""
