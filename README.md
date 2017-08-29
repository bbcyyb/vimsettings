## vimsettings
Some settings for development environment.
Somthing like:
* .vimrc
* .tmux.conf
* .gitconfig
* gwntj
* .jshintrc
* script
 1. clean.sh
 2. init.sh
 3. deploy.sh

### .vimrc
Basic vim config.

## .tmux.conf
Basic tmux config, need add below code into **.bashrc** before using tmux.
` 
export EDITOR='vim' 
alias tmux='tmux -2'
`

## .gitconfig
Basic git config.

## gwntj
Alias for search tools which use grep command on linux. Need add below code into **.bashrc** before using gwntj.
`
export PATH=$PATH:/home/kevin/bin
`

## .jshintrc
jshint config, used by RrackHD project.

## script
### clean.sh
Clean all existed vim config on user folder.

### init.sh
Download Vundle tools from github.

### deploy.sh
 * Copy .vimrc to ~/
 * Copy vim/ to ~/
 * Copy .tmux.conf to ~/
 * Copy .gitconfig to ~/
 * If not exist *~/bin* folder, create new.
 * Copy gwntj to ~/bin/
 * Copy .jshintrc to ~/
