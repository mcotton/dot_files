export PS1="\w> "

alias ui01='ssh mcotton@192.168.2.158'
alias ui02='ssh mcotton@192.168.2.159'

alias hardware='/Users/cotton/dev/CS/tecs-software-suite-2.5/HardwareSimulator.sh'

alias tree='ls -R'

alias wifi='ifconfig en0'

alias copy='pbcopy'
alias paste='pbpaste'

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

#]alias whack="ssh mcotton@192.168.2.158 'cd /home/mcotton/dev/mcotton-een; git pull origin merge'"
alias whack='ssh mcotton@192.168.2.158 '\''cd /home/mcotton/dev/mcotton-een; git pull origin mcotton-refactor'\'''

alias gitpnp='git pull origin $(current_branch) && git push origin $(current_branch)'
alias status='git status --short'
alias commit='git commit'
alias add='git add .'
#alias log='git log --color | less -R'
alias log="git log --graph --pretty=format:'%Cred%h%Creset-%C(yellow)%d%Creset
%s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
alias gittree='git log --graph --simplify-by-decoration --pretty=format:'%d' --all'
alias lola="git log --graph --decorate --pretty=oneline --abbrev-commit
--all"
alias bump="git checkout master; git merge mcotton; git pull --all; git push; git checkout mcotton"
alias patches="git log --abbrev-commit -p"
alias gti='git'

alias new='ls -ltr | tail'

#function parse_git_branch () {
#       git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
#}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"

#PS1="$GREEN\w$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "

function parse_git_dirty {
 [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}
#export PS1='\u@\h \[\033[1;33m\]\w\[\033[0m\]$(parse_git_branch)$ '
PS1="$GREEN\w$YELLOW \$(parse_git_branch)$NO_COLOUR\$ "

# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}

alias sandbox='ssh mcotton@192.168.2.169'
alias pull_login="ssh mcotton@192.168.2.169 'cd /home/mcotton/een/login/mcotton-een/templates/; git pull; grunt ' "
alias pull_next="ssh mcotton@192.168.2.169 'cd /home/mcotton/een/next/mcotton-een/templates/; git pull; grunt ' "
alias pull_prev="ssh mcotton@192.168.2.169 'cd /home/mcotton/een/prev/mcotton-een/templates/; git pull; grunt ' "
alias pull_stage="ssh mcotton@192.168.2.169 'cd /home/mcotton/een/stage/mcotton-een/templates/; git pull; git checkout -f;  git reset --hard' "
alias sublime='open -a /Applications/Developer/Sublime\ Text\ 2.app/'

alias redis-remote='redis-cli -h nodejitsudb1467487134.redis.irstack.com -p 6379 -a nodejitsudb1467487134.redis.irstack.com:f327cfe980c971946e80b8e975fbebb4'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
