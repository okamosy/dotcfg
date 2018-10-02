source ~/.zsh/colors.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/history.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/setopts.zsh
source ~/.zsh/zsh_hooks.zsh
source "$GBT__HOME/sources/prompt_forwarding/local"
source ~/.zsh/aliases.zsh

[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

PROMPT='$(gbt $?)'
