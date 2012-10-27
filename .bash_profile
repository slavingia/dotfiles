function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function proml {
  local        BLUE="\[\033[0;34m\]"
  local         RED="\[\033[0;31m\]"
  local   LIGHT_RED="\[\033[1;31m\]"
  local       GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local       WHITE="\[\033[1;37m\]"
  local  LIGHT_GRAY="\[\033[0;37m\]"
  case $TERM in
    xterm*)
    TITLEBAR='\[\033]0;\u@\h:\w\007\]'
    ;;
    *)
    TITLEBAR=""
    ;;
  esac

PS1="$RED\w$GREEN\$(parse_git_branch)\
$GREEN\$ "
PS2='> '
PS4='+ '
}
proml


export PATH=$PATH:/usr/local/git/bin/

export EC2_HOME=~/.ec2
export PATH=$PATH:$EC2_HOME/bin
export EC2_PRIVATE_KEY=gumroad-keypair.pem
export EC2_CERT=gumroad-cert.pem
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/

PATH=/usr/local/bin:${PATH}
PATH=/usr/local/mysql/bin:${PATH}
PATH=/usr/local/mysql/lib:${PATH}
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/

alias g='git status'
alias ga='git add'
alias gb='git branch'
function gc() {
  git commit -v -a -m "$*"
}
alias gd='git diff'
alias gl='git pull --rebase'
alias gp='git push'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
