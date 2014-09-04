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
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
source /usr/local/bin/virtualenvwrapper.sh

# Customize to your needs...
export PATH=/usr/local/opt/ruby/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/games/bin:/usr/local/share/npm/bin:/usr/local/bin:$HOME/bin
export NODE_PATH=/usr/local/lib/node_modules
export ANDROID_SDK_ROOT=/usr/local/opt/android-sdk

# Golang
export GOROOT="/usr/local/go"
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin:/usr/local/go/bin"
source ~/src/golang-crosscompile/crosscompile.bash

# GTrigz
export DOCKER_HOST=tcp://:4243

# chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
chruby 2.0

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
export AUTOJUMP_KEEP_SYMLINKS=1

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/ryana/code/games/cocos2d-x/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# moai-sdk
export MOAI_ROOT=~/code/games/moai-dev
export MOAI_BIN=$MOAI_ROOT/release/osx/host-sdl/bin
export MOAI_CONFIG=$MOAI_ROOT/samples/config
export PATH=$MOAI_BIN:$PATH
export PATH=~/code/games/moaicli:$PATH

