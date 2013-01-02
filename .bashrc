
alias vs='vagrant up && vagrant ssh'
alias zs='rm .zeus.sock; zeus start'
alias gs='git status'
alias g='git status'
function gc() {
  git commit -v -a -m "$*"
}
alias gd='git diff'
alias gl='git pull --rebase'
alias gp='git push'

function subl() {
  ~/bin/subl "$*"
}

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=$HOME/local/bin:$PATH
