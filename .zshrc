export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
  #https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/dotenv  
  dotenv
  #https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/osx
  osx  
  last-working-dir
  web-search
  zsh-z
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# source
source $ZSH/oh-my-zsh.sh

# exports
jdk() {
        version=$1
        export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
        java -version
}

# user configuration
# custom aliases
alias c="code .";
alias ll="ls -1a";
alias ..="cd ../";
alias ..l="cd ../ && ll";
alias pg="echo 'Pinging Google' && ping www.google.com";
alias de="cd ~/Desktop";
alias dd="cd ~/code";
alias d="cd ~/code && cd "
alias deleteDSFiles="find . -name '.DS_Store' -type f -delete"
alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"

## git aliases
function gc { git commit -m "$@"; }
alias gcm="git checkout master";
alias gs="git status";
alias gpull="git pull";
alias gf="git fetch";
alias gfa="git fetch --all";
alias gf="git fetch origin";
alias gpush="git push";
alias gd="git diff";
alias ga="git add .";
alias gb="git branch";
alias gbr="git branch remote"
alias gfr="git remote update"
alias gbn="git checkout -B "
alias grf="git reflog";
alias grh="git reset HEAD~" # last commit
alias gac="git add . && git commit -a -m "
alias gsu="git gpush --set-upstream origin "
alias glog="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches"

# Java
alias java11='export JAVA_HOME=$JAVA_11_HOME'

## K8 aliases
alias k="kubectl"
alias kg="kubectl get"
alias kd="kubectl describe"
alias kgpo="kubectl get pods"
alias kdpo="kubectl describe pods"
alias kgdep="kubectl get deployment"
alias kgno="kubectl get nodes"
alias kdno="kubectl describe nodes"
alias kgns="kubectl config view --minify | grep namespace:"
alias kdns="kubectl describe namespaces"

## oke functions
oke() {
  export KUBECONFIG=~/dev/config/oke/oal-master-kubeconfig.txt
  export HTTP_PROXY=http://www-proxy-hqdc.us.oracle.com:80
  export HTTPS_PROXY=http://www-proxy-hqdc.us.oracle.com:80
  k config get-contexts
}

## other aliases
alias zshrc="nano ~/.zshrc"
alias topten="history | commands | sort -rn | head"
alias myip="curl http://ipecho.net/plain; echo"
alias dirs='dirs -v | head -10'
alias usage='du -h -d1'
alias update="source ~/.zshrc"
alias sshdir="cd ~/.ssh"
alias runp="lsof -i "
alias md="mkdir "
alias ..='cd ..'
alias ...='cd ../..'

## other functions
commands() {
  awk '{a[$2]++}END{for(i in a){print a[i] " " i}}'
}

# default to Java 11
jdk 11
