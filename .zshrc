# TODO: REMOVE THIS WHEN XCODE FIXES THIS
# Xcode 5.1 broke some shit... until they fix it, we need this:
export ARCHFLAGS=-Wno-error=unused-command-line-argument-hard-error-in-future

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="zemm-blinks"

# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="false"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx python nyan brew compleat pip encode64 autojump mercurial)

source $ZSH/oh-my-zsh.sh
source ~/.aliases

# Virtualenvwrapper stuff
#export WORKON_HOME=$HOME/.virtualenvs
#export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
#source /usr/local/bin/virtualenvwrapper.sh

# Customize to your needs...
export PATH=/usr/local/bin:$HOME/bin:/usr/local/opt/ruby/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/games/bin:/usr/local/share/npm/bin:/usr/bin:/bin

export AUTOJUMP_KEEP_SYMLINKS=1

# make using stuff in /usr/local with clang a little easier
export CFLAGS="-I/usr/local/include"
export LDFLAGS="-L/usr/local/lib"

# SDL2-go
#export CGO_CFLAGS="$CFLAGS -I /opt/X11/include"
#export CGO_LDFLAGS="$LDFLAGS -F /Library/Frameworks"


function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

# Autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

# Android
export PATH=$PATH:~/Library/Android/sdk/platform-tools

