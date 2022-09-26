# Set XDG variables (because some applications to not use proper fallbacks)
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
#export XDG_RUNTIME_DIR=

# Zsh
export ZSH="${XDG_DATA_HOME:-$HOME/.local/share}/oh-my-zsh"
export ZSH_CUSTOM="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
if [ -f /etc/os-release ]; then
	export DISTRO="$(awk -F'=' '/^ID/ { print $2 }' /etc/os-release)"
fi

# Perl
if [ -d ~/perl5 ]; then
	export PERL5LIB="$HOME/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"
	export PERL_LOCAL_LIB_ROOT="$HOME/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"
	export PERL_MB_OPT="--install_base \"$HOME/perl5\""
	export PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"
	export PATH="$PATH:$HOME/perl5/bin"
fi

# NPM
NPM_PACKAGES="${XDG_DATA_HOME:-$HOME/.local/share}/.npm-packages"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"

# Path
export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$NPM_PACKAGES/bin:/opt/cuda/bin:/usr/bin/sbin:$PATH"

# Editor
export VISUAL=nvim
export EDITOR=nvim

# Force XDG conventions
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wgetrc"
export WINEPREFIX="${XDG_DATA_HOME:-$HOME/.local/share}/wineprefixes/default"
export GRADLE_USER_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/gradle"
export CUDA_CACHE_PATH="${XDG_CACHE_HOME:-$HOME/.cache}/nv"
export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/npm/npmrc"

