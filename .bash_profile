PATH="/usr/local/bin:/opt/local/bin:/opt/bin:/usr/local/share/npm/bin:$PATH"
export CLICOLOR=1

 # Load RVM into a shell session *as a function*
[[ -s "/Users/arnela/.rvm/scripts/rvm" ]] && source "/Users/arnela/.rvm/scripts/rvm"

if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
    . /usr/local/etc/bash_completion.d/git-completion.bash
    PS1='\h:\W$(__git_ps1 "\[\e[0;35m\](%s)")\[\e[0;39m\] \u\$ '
fi

#if [ -f /usr/local/etc/bash_completion.d/git-prompt.sh ]; then
. /usr/local/etc/bash_completion.d/git-prompt.sh
#fi

. /Users/arnela/Development/Tools/z/z.sh

# Go paths
export GOPATH=$HOME/Development/goworkspace
export PATH=$PATH:$GOPATH/bin