# ================================
# Environment Variables
# ================================
# Fixes spring failing in macOS M4
# https://github.com/rails/rails/issues/38560
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# Fixes segfault when attempting to connect to Postgres
# https://github.com/ged/ruby-pg/issues/538
# https://github.com/rails/rails/issues/38560#issuecomment-1881733872
export PGGSSENCMODE="disable"

# ================================
# Aliases
# ================================
alias s="bundle exec spring"
alias rc="rails console"
alias rsv="rails server"
