export HISTFILE=~/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000

# Write to the history file immediately, not when the shell exits
setopt INC_APPEND_HISTORY

# Share history across all concurrent sessions (needed for multiplexers)
setopt SHARE_HISTORY

# Append to history file
setopt APPEND_HISTORY

# Save timestamp and duration of commands
setopt EXTENDED_HISTORY

# Do not record an event that was just recorded again
setopt HIST_IGNORE_DUPS

# Remove older duplicate entries from history
setopt HIST_IGNORE_ALL_DUPS

# Do not display a duplicate previously found in search
setopt HIST_FIND_NO_DUPS

# fzf, without CTRL+R to allow atuin to work
FZF_CTRL_R_COMMAND= source <(fzf --zsh)

# zoxide
eval "$(zoxide init zsh)"

# mise
eval "$(mise activate zsh)"

# yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

# zellij
eval "$(zellij setup --generate-auto-start zsh)"

# atuin
eval "$(atuin init zsh --disable-up-arrow)"

