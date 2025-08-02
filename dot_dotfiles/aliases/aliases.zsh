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
alias lg="lazygit"
alias cm="chezmoi"
alias cma="chezmoi add"
alias cme="chezmoi edit"
alias cmea="chezmoi edit --apply"

# Config
alias config="cma ~/.zshrc"
alias config-idea="cma ~/.ideavimrc"

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
