# dotcfg

## Prerequisites
1. Install zsh and make it the default shell
  * `chsh -s $(which zsh)`
1. Install the additional following packages:
  * git
  * php-cli (needed for phpbrew)
  * phpbrew
  * [Go Bullet Train](https://github.com/jtyr/gbt)
  

  
## To install this configuration, run the following commands:
1. `alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`
1. `echo ".cfg" >> .gitignore`
1. `git clone --bare git@github.com:seiji-thirdbridge/dotcfg.git $HOME/.cfg`
1. `config checkout`

These steps are a summary of the instructions found [here](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)
