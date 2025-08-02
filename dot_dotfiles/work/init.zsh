# ================================
# Environment Variables
# ================================
export PATH="$(brew --prefix)/opt/postgresql@14/bin:$PATH"

# ================================
# In-House Scripts
# ================================
# switch-env
if [ -f "$HOME/projects/inf-scripts/switch-env/switch-env.sh" ] ; then
        . "$HOME/projects/inf-scripts/switch-env/switch-env.sh"
fi

# eks-jumpbox-session
if [ -f "$HOME/projects/inf-scripts/eks-jumpbox-session/eks-jumpbox-session" ] ; then
        export PATH="$HOME/projects/inf-scripts/eks-jumpbox-session:$PATH"
fi

# ================================
# Aliases
# ================================
alias prod-login="switch-env prd-lw && mac-focus-app iTerm2 && eks-jumpbox-session"
alias prod="prod-assign && prod-login"

# ================================
# Functions
# ================================
# https://github.com/ZimbiX/dotfiles/blob/master/mable/aliases.zsh
jira() {
  local jira_issue_number
  jira_issue_number="$(git rev-parse --abbrev-ref HEAD | grep -oE 'ES-\d+')"
  open "https://attainhealthtech.atlassian.net/browse/$jira_issue_number"
}
