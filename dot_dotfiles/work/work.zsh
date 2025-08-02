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
