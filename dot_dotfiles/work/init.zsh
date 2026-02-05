# ================================
# Environment Variables
# ================================

# Disable git hooks
export WORKUP=0

# Set up Android Studio
if [ -z ${ANDROID_HOME+x} ]; then
  export ANDROID_HOME=$HOME/Library/Android/sdk
  export PATH=$ANDROID_HOME/emulator:$PATH
  export PATH=$ANDROID_HOME/tools:$PATH
  export PATH=$ANDROID_HOME/tools/bin:$PATH
  export PATH=$ANDROID_HOME/platform-tools:$PATH
  export PATH=$ANDROID_HOME/cmdline-tools/latest/bin:$PATH
fi

if [ -z "${ANDROID_SDK_ROOT:-}" ]; then
  export ANDROID_SDK_ROOT="${ANDROID_HOME:-}";
fi

# ================================
# In-House Scripts
# ================================

# ================================
# Aliases
# ================================

# ================================
# Functions
# ================================
