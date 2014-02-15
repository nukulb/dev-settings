
#****************************************alias****************************************************
source ~/git-completion.bash
alias chrome="open /Applications/Google\ Chrome.app/ --args -disable-web-security -start-maximized"
alias gb='git branch'
alias gba='git branch -a'
alias gc='git commit -v'
alias gd='git diff'
alias gl='git pull'
alias gp='git push'
alias gst='git status'
alias gr='git reset'
alias pushgerrit='git push gerrit:webworks/webworks HEAD:refs/for/'
alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
alias glog='git log --oneline --decorate --graph'
alias reload='source ~/.bash_profile'
alias up='cd ..'
alias 2up='cd .. && cd ..'
alias 3up='cd .. && cd .. && cd ..'
alias bash='vi ~/.bash_profile'
alias home='cd ~/'
alias next='git checkout next'
alias prev='git checkout @{-1}'
#**************************showing git branches in bash prompt***********************************

export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)


function is_git_dirty {

  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(is_git_dirty)]/"
}
export PS1='\u@\h \[\033[1;33m\]\w\[\033[0m\]$(parse_git_branch)$ '


function proml {
  local         RED="\[\033[0;31m\]"
  local   LIGHT_RED="\[\033[1;31m\]"
  local      YELLOW="\[\033[0;33m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local       WHITE="\[\033[1;37m\]"
  local  LIGHT_GRAY="\[\033[0;37m\]"
  local LIGHT_PURPLE="\[\033[1;34m\]"
  case $TERM in
    xterm*)
    TITLEBAR='\[\033]0;\u@\h:\w\007\]'
    ;;
    *)
    TITLEBAR=""
    ;;
  esac

PS1="${TITLEBAR}\
$LIGHT_GREEN\w$YELLOW\$(parse_git_branch)\
\n$WHITE\$ "
PS2='> '
PS4='+ '
}
proml

# Set git autocompletion and PS1 integration
if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then
    . /usr/local/git/contrib/completion/git-completion.bash
fi
#GIT_PS1_SHOWDIRTYSTATE=true

if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

#PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '


export TERM="xterm-256color"

export BUGS_BOUNTY_DATABASE="DEV_DATA"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


###############################################################################
#Browser specific

export RICHMOND_ROOT=$HOME/browser
export QCONF_OVERRIDE=$RICHMOND_ROOT/qconf-override.mk

#source /Developer/SDKs/bbndk-2.0.1/bbndk-env.sh
#source /Developer/SDKs/bbndk-10.0.5/bbndk-env.sh
source /Applications/bbndk/bbndk-env.sh

export platform=macosx
#(for mac it would be "source $BBNDK_INSTALLDIR/bbndk-env.sh", probably also need to add "export platform=macosx")

# WebKit Tools and Scripts
export PATH=$PATH:$RICHMOND_ROOT/webkit/WebKitTools/Scripts:$RICHMOND_ROOT/webkit/Tools/Scripts:$RICHMOND_ROOT/platform/tools/pb
#make sure qmake is installed and on your path

##############################################################################



##
# Your previous /Users/nukulb/.bash_profile file was backed up as /Users/nukulb/.bash_profile.macports-saved_2012-04-18_at_16:39:32
##

# MacPorts Installer addition on 2012-04-18_at_16:39:32: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

## SCM breeze awesomeness
[ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"

#**************************exports for blackberry.* tools ***************************************
export GITHUB_TOKEN="workaround-for-hub"

##
# Your previous /Users/nukulb/.bash_profile file was backed up as /Users/nukulb/.bash_profile.macports-saved_2012-07-07_at_09:14:53
##

# MacPorts Installer addition on 2012-07-07_at_09:14:53: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
