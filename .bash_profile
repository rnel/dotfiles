PATH="/usr/local/bin:/opt/local/bin:/opt/bin:/usr/local/share/npm/bin:$PATH"
export CLICOLOR=1

 # Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
    . /usr/local/etc/bash_completion.d/git-completion.bash
    PS1='\h:\W$(__git_ps1 "\[\e[0;35m\](%s)")\[\e[0;39m\] \u\$ '
fi

#if [ -f /usr/local/etc/bash_completion.d/git-prompt.sh ]; then
. /usr/local/etc/bash_completion.d/git-prompt.sh
#fi

. $HOME/Development/Tools/z/z.sh