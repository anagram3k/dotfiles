# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

export DIFFPROG=meld

if   command -v nvim  1>/dev/null; then export EDITOR='nvim'
elif command -v vim   1>/dev/null; then export EDITOR='vim'
elif command -v vi    1>/dev/null; then export EDITOR='vi'
elif command -v nano  1>/dev/null; then export EDITOR='nano'
else echo 'Install a proper editor.'
fi

case "$EDITOR" in
    nvim) export MANPAGER="nvim +'set ft=man' -" ;;
    vim)  export MANPAGER="/bin/sh -c \"col -b | vim -c 'set ft=man ro nomod nolist' -\"" ;;
    *)    export MANPAGER='less' ;;
esac

# Environment variables for XDG
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache

# Source cargo environment
export CARGO_HOME="$XDG_DATA_HOME"/cargo
#. "$HOME/.local/share/cargo/env"
#. "$XDG_DATA_HOME/cargo/env"

# Alias for wget, vim and yarn since there's no env var for these to use xdg
alias wget="wget --hsts-file='$XDG_DATA_HOME/wget-hsts'"
alias vim="vim -i ~/.cache/vim/info"
alias yarn='yarn --use-yarnrc "$XDG_CONFIG_HOME/yarn/config"'


# More environment variables for applications that don't use XDG by default
export CABAL_CONFIG="$XDG_CONFIG_HOME"/cabal/config
export CABAL_DIR="$XDG_DATA_HOME"/cabal
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export BUNDLE_USER_CONFIG="$XDG_CONFIG_HOME"/bundle
export BUNDLE_USER_CACHE="$XDG_CACHE_HOME"/bundle
export BUNDLE_USER_PLUGIN="$XDG_DATA_HOME"/bundle
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export ANDROID_HOME="$XDG_DATA_HOME"/android
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export ZDOTDIR=$HOME/.config/zsh
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export GOPATH="$XDG_DATA_HOME"/go
export PLATFORMIO_CORE_DIR="$XDG_DATA_HOME"/platformio
