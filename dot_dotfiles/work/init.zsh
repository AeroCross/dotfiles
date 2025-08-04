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

# Opens the Jira ticket of the current branch, based off the name
# https://github.com/ZimbiX/dotfiles/blob/master/mable/aliases.zsh
jira() {
  local jira_issue_number
  jira_issue_number="$(git rev-parse --abbrev-ref HEAD | grep -oE 'ES-\d+')"
  open "https://attainhealthtech.atlassian.net/browse/$jira_issue_number"
}

# Logs into Release
# Requires having logged into staging with `switch-env stg`
release() {
  kubectl exec -it $(kubectl get pods -n release --no-headers |
    grep '^mable-rails-backend-[^-]*-[^-]* ' |
    awk 'NR==1{print $1}') -n release -- bundle exec rails console
}
