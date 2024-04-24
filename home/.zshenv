export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

# zsh
set -o vi
setopt globdots
setopt HIST_SAVE_NO_DUPS
export ZDOTDIR="$XDG_CONFIG_HOME/zsh/"

# Distro specific
distro=$(uname)
if [[ $distro == "Darwin" ]]; then
  export GIT_DIRECTORY=$HOME/git
  export HOMEBREW_PREFIX="/opt/homebrew"
elif [[ $distro == "Linux" ]]; then
  export GIT_DIRECTORY=/srv/git
  export HOMEBREW_PREFIX="/home/linuxbrew/.linuxbrew"
fi

# Evironment variables
text_editor="vim"
export EDITOR="$text_editor"
export VISUAL="$text_editor"
export GIT_EDITOR="$EDITOR"
export GPG_TTY=$(tty)
export DOTFILES="$HOME/.dotfiles/"

# Add homebrew to path
if [[ ! -f $(which brew) ]]; then
  eval "$($HOMEBREW_PREFIX/bin/brew shellenv)"
fi
