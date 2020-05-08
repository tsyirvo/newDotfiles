# Git
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gpd='git pull origin develop'
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'
alias gc='git commit'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch'
alias gcp="git checkout -"
alias gcd="git checkout develop"
alias gcm="git checkout master"
alias gr="git reset --soft HEAD~1"
alias ga='git add -A'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gac='git add -A && git commit -m'
alias gcb='git checkout -b $1'
alias grebd='git checkout develop && git pull origin develop && git checkout - && git rebase develop --rebase-merges'
alias grebm='git checkout master && git pull origin master && git checkout - && git rebase master --rebase-merges'
alias gsc='git stash && git stash clear'
alias ghide='git update-index --assume-unchanged'
alias gunhide='git update-index --no-assume-unchanged'
alias ghidden='! git ls-files -v | grep '^h' | cut -c3-'
alias gpf='git push origin HEAD -f --force-with-lease'

# System
alias ls="exa -la"

# XCode 
alias ios="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"
alias watchos="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator\ \(Watch\).app"

# Kubectl
alias k="kubectl"

# Neovim
alias v="nvim"

# Tmux
alias t="tmux"
alias ta="tmux a -t"
alias tls="tmux ls"
alias tn="tmux new -s"
