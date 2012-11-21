# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# Include Git bash-completion and prompt functions
if [ -f "$HOME/local/git-completion.bash" ]; then
    source "$HOME/local/git-completion.bash"
fi
startdiff () {
    echo git diff --stat=120,100 start-$(git branch | awk '/^\*/{print $2}')...HEAD
    git diff --stat=120,100 start-$(git branch | awk '/^\*/{print $2}')...HEAD
}

prodmasterdiff () {
    echo git diff --stat=120,100 prod/master...HEAD
    git diff --stat=120,100 prod/master...HEAD
}

# Colour the hostname part depending on what Shutterstock environment you're in
function __host_ps1()
{
    hostname="$(hostname)"
    if [[ $hostname =~ '.*DEV.*' ]]; then
        tput setaf 4
    elif [[ $hostname =~ 'neil-ubuntu' ]]; then
        tput setaf 5
    elif [[ $hostname =~ 'worker-DEV' ]]; then
        tput setaf 2
    elif [[ $hostname =~ 'lvs[0-9]c' ]]; then
        tput setaf 1
    elif [[ $hostname =~ '(shutter)?worker[0-9]*' ]]; then
        tput setaf 3
    fi

    printf "$1" "$hostname"
    tput sgr0
}

# Colour the Git branch based on whether it's a real branch or a "MERGING", etc, kind of state branch
function __git_ps1_branch()
{
    if __git_ps1 > /dev/null 2>&1; then
        if [[ $(__git_ps1) =~ '\|' ]]; then
            tput setaf 1
        else
            tput setaf 4
        fi
        __git_ps1 "[%s]"
        tput sgr0
    fi
}

PS1='\[\033[00;31m\]$(r=$?; if test $r -ne 0; then echo "[$r]"; set ?=$r; unset r; fi)\[\033[00m\]${debian_chroot:+($debian_chroot)}\[\033[01;37m\]\u\[\033[01;30m\]@$(__host_ps1 "%s")\[\033[00;32m\]$SCREEN_WIN\[\033[00m\]$(__git_ps1_branch):\w\[\033[00m\]
\[\033[01;30m\]$(date +"%Y-%m-%d %H:%M:%S")\[\033[00m\] \[\033[00;34m\]\$\[\033[00m\] '

# node.js support
. ~/nvm/nvm.sh
export PATH=$PATH:$HOME/node_modules/nodeunit/bin
export PATH=$PATH:$HOME/local/bin
