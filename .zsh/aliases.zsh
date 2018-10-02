alias l='ls -lah'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

alias console='bin/console --env=dev'
alias dconsole='XDEBUG_CONFIG= console'
alias debug_v1='ssh -R 9000:localhost:9000 sokamoto@devbox'

# Git aliases
alias g='git'
alias ga='git add'
alias gb='git branch'
alias gc='git commit -v'
alias gc!='git commit -v --amend'
alias gcb='git checkout -b'
alias gcmsg='git commit -m'
alias gco='git checkout'
alias gcp='git cherry-pick'
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'
alias gd='git diff'
alias gdt='git describe --tags `git rev-list --tags --max-count=1`'
alias gf='git fetch'
alias gl='git pull'
alias glg='git log --stat --max-count=10'
alias glgg='git log --graph --max-count=10'
alias gm='git merge'
alias gp='git push'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbs='git rebase --skip'
alias grbi='git rebase -i'
alias grh='git reset HEAD'
alias grhh='git reset --hard HEAD'
alias gss='git status -s'
alias gst='git stash'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gts='git tag -s'

# GBT aliases
alias docker='gbt_docker'
alias mysql='gbt_mysql'
alias ssh='gbt_ssh'
alias su='gbt_su'
alias sudo='gbt_sudo'
alias vagrant='gbt_vagrant'

# Proxy aliases
alias proxy-on='ssh -fN'
alias proxy-check='ssh -O check'
alias proxy-off='ssh -O exit'
