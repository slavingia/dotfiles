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

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*