# http://www.cyberciti.biz/faq/bash-shell-change-the-color-of-my-shell-prompt-under-linux-or-unix/
#
# Set default editor
EDITOR=vim

# Configure command line colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

# Set color variables
BLACK="\[\e[0;30m\]"
DARK_GRAY="\[\e[1;30m\]"
RED="\[\e[0;31m\]"
YELLOW="\[\e[0;33m\]"
PURPLE="\[\e[1;34m\]"
BLUE="\[\e[0;34m\]"
LIGHT_BLUE="\[\e[1;34m\]"
GREEN="\[\e[0;32m\]"
LIGHT_GREEN="\[\e[1;32m\]"
CYAN="\[\e[0;36m\]"
LIGHT_CYAN="\[\e[1;36m\]"
LIGHT_RED="\[\e[1;31m\]"
PURPLE="\[\e[0;34m\]"
LIGHT_PURPLE="\[\e[1;35m\]"
BROWN="\[\e[0;33m\]"
LIGHT_GRAY="\[\e[0;37m\]"
WHITE="\[\e[1;37m\]"

# load script that allows for showing git branch is PS1
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh

# Change command prompt display
export PS1="${GREEN}\u:${YELLOW}\w${PURPLE}\$(__git_ps1) \$\e[m"

# Meta alias's
# alias osu="open -a Sublime\ Text\ 2"
# alias prof="subl ~/.bash_profile"
# alias reprof=". ~/.bash_profile"

# Navigational alias's
# alias pdf="cd ~/Documents/pdfs"
# alias de="cd ~/Desktop"
# alias ds="cd ~/Documents"
# alias c="cd ~/Documents/cp"
# alias snip="cd ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/"

# Shortcut commands
alias py="python"
alias osu="open -a Sublime\ Text\ 2"
alias vlc="open -a VLC"
alias nd="node debug"

# Docker
# alias bd="boot2docker"
# alias bds="boot2docker start"
# alias dk="docker"
# alias dkr="docker run"

docker-ip() {
      boot2docker ip 2> /dev/null
}

# Vagrant
# alias vg="vagrant"

# Helper functions

# combine mkdir and cd
mkcd () {
      mkdir "$1"
        cd "$1"
}

# combine touch and osu
tosu () {
      touch "$1"
        osu "$1"
}

# Run python's simple server
alias httpserver="python -m SimpleHTTPServer"

export REPLYTO=jerryzhou@outlook.com  # put your email address here
