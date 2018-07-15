PATH="/usr/local/bin:/opt/local/bin:/opt/bin:/usr/local/share/npm/bin:$PATH"
export CLICOLOR=1

if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
    . /usr/local/etc/bash_completion.d/git-completion.bash
    PS1='\h:\W$(__git_ps1 "\[\e[0;35m\](%s)")\[\e[0;39m\] \u\$ '
fi

#if [ -f /usr/local/etc/bash_completion.d/git-prompt.sh ]; then
. /usr/local/etc/bash_completion.d/git-prompt.sh
#fi

. $HOME/Development/Tools/z/z.sh

# Go paths
export GOPATH=$HOME/Development/goworkspace
export PATH=$PATH:$GOPATH/bin

# PHP composer path
export PATH=$PATH:~/.composer/vendor/bin

# MySQL
export PATH="/usr/local/mysql/bin:$PATH"

export PATH="/usr/local/sbin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

alias myip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 | cut -d\  -f2"
