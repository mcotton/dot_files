export PS1="\w> "

alias tree='ls -R'

alias wifi='ifconfig en0'

alias mate='open -a TextMate'
alias coda='open -a /Applications/Developer/Coda.app/'

alias aws='ssh -i ~/.ssh/turbocotton.pem ubuntu@107.22.196.135'

#alias ec2='ssh -i ~/ec2/subtlecontrols/cotton.pem ubuntu@50.16.222.245'
#alias slicehost='ssh -p 30000 demo@67.23.0.254'

#alias serial='screen /dev/tty.FireFly-586F-SPP-1 19200'
#alias roomba='screen /dev/tty.KeySerial1 57600'
alias ll='ls -alF'
#alias android_proxy='adb forward tcp:8080 localabstract:Proxy'

alias ..='cd ..'

alias reload="source ~/bin/aliases.bash"

# Shell -- Some are from Damian Conway
alias l="ls -lh"
alias s="cd .."
alias a="ls -la"
alias cdd='cd -'        # goto last dir cd'ed from

alias h='history'
alias c='clear'
alias cl='clear; l'
alias cls='clear; ls'

alias e='exit'


export PATH=/usr/local/sbin:$PATH
export PATH=~/bin:$PATH

# Setting PATH for MacPython 2.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
export PATH

alias ql='qlmanage -p 2>/dev/null'
alias spotlight='mdfind -live'
alias desktop='/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background &'
alias webserver='python -m SimpleHTTPServer 8000'

alias ramdisk='diskutil erasevolume HFS+ \"ramdisk\" `hdiutil attach -nomount
ram://1165430`'

export EC2_HOME=~/ec2/subtlecontrols
alias m1='alias g1="cd `pwd`"'
alias m2='alias g2="cd `pwd`"'
alias m3='alias g3="cd `pwd`"'

alias status='git status'
alias commit='git commit'
alias add='git add .'
#alias log='git log --color | less -R'
alias log="git log --graph --pretty=format:'%Cred%h%Creset-%C(yellow)%d%Creset
%s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
alias gittree='git log --graph --simplify-by-decoration --pretty=format:'%d' --all'
alias lola="git log --graph --decorate --pretty=oneline --abbrev-commit
--all"

alias new='ls -ltr | tail'

function parse_git_branch () {
       git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"

PS1="$GREEN\w$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "


# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}
