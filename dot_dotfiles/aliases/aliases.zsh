# ================================
# Aliases
# Note: These use scripts in .dotfiles/bin/
# ================================
# Shell overrides
alias ls="eza -lah --no-user --no-permissions --sort type"
alias ll="ls"
alias cat="bat"
alias grep="ugrep"

# Apps
alias n="nvim"
alias k="clear"
alias cm="chezmoi"
alias lg="lazygit"

# Config
alias config="nvim ~/.zshrc"
alias config-idea="nvim ~/.ideavimrc"

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

# TODO: This is macOS specific
alias mine="open -na RubyMine.app --args \"$@\""
