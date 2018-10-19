export PS1="\w> "

export GOOGLE_APPLICATION_CREDENTIALS=/Users/cotton/dev/huvr/huvrdata-14060ecc3215.json

alias hardware='/Users/cotton/dev/CS/tecs-software-suite-2.5/HardwareSimulator.sh'

alias tree='ls -R'

alias wifi='ifconfig en0'

alias copy='pbcopy'
alias paste='pbpaste'

alias mate='open -a TextMate'
alias coda='open -a /Applications/Developer/Coda.app/'

#alias serial='screen /dev/tty.FireFly-586F-SPP-1 19200'
#alias roomba='screen /dev/tty.KeySerial1 57600'
alias ll='ls -alF'

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
export PATH=/usr/local/bin:$PATH
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
alias checkout='git checkout'
alias gdiff='git diff --ignore-space-change'

alias record='i=1;while [ 1 ];do screencapture -t jpg -x /Volumes/Mr.Tiny/$i.jpg; let i++;sleep 6; done'

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


alias sublime='open -a /Applications/Developer/Sublime\ Text.app/'

alias redis-remote='redis-cli -h nodejitsudb1467487134.redis.irstack.com -p 6379 -a nodejitsudb1467487134.redis.irstack.com:f327cfe980c971946e80b8e975fbebb4'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

alias start-nginx='sudo launchctl load /Library/LaunchAgents/homebrew.mxcl.nginx.plist'
alias stop-nginx='sudo launchctl unload /Library/LaunchAgents/homebrew.mxcl.nginx.plist'

alias pdf-compress="phantomjs ~/dev/app-pdf/html2pdf.js && gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/printer -dNOPAUSE -dQUITE -dBATCH -sOutputFile=output2.pdf output.pdf "
alias remote_shell="remote_api_shell.py -s huvrdata.appspot.com"
alias local_shell="remote_api_shell.py -s localhost:59944"

alias huvrdata_shell="export GOOGLE_APPLICATION_CREDENTIALS=/Users/cotton/dev/huvr/huvrdata-14060ecc3215.json; remote_api_shell.py -s huvrdata.appspot.com"
alias inspectflow_shell="export GOOGLE_APPLICATION_CREDENTIALS=/Users/cotton/dev/huvr/inspectflow-5f247ff2bb04.json; remote_api_shell.py -s inspectflow.appspot.com"
alias inspectflow-stage_shell="export GOOGLE_APPLICATION_CREDENTIALS=/Users/cotton/dev/huvr/Inspectflow-stage-bfff645de7db.json; remote_api_shell.py -s inspectflow-stage.appspot.com"
alias huvrtools_shell='export GOOGLE_APPLICATION_CREDENTIALS=/Users/cotton/dev/huvr/huvrtools-14fcd6d0913c.json; remote_api_shell.py -s huvrtools.appspot.com'
alias huvrbp_shell='export GOOGLE_APPLICATION_CREDENTIALS=/Users/cotton/dev/huvr/huvrbp-6485ec4a5b6a.json; remote_api_shell.py -s huvrbp.appspot.com'
alias huvrdatacloud_shell="export GOOGLE_APPLICATION_CREDENTIALS=/Users/cotton/dev/huvr/huvrdatacloud-e4c36245f278.json; remote_api_shell.py -s huvrdatacloud.appspot.com"


export PYTHONPATH=/usr/local/Cellar/opencv/2.4.12_2/lib/python2.7/site-packages:$PYTHONPATH
export PYTHONPATH=/Applications/Developer/GoogleAppEngineLauncher.app/Contents/Resources/GoogleAppEngine-default.bundle/Contents/Resources/google_appengine/:$PYTHONPATH


# The next line updates PATH for the Google Cloud SDK.
source '/Users/cotton/dev/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/cotton/dev/google-cloud-sdk/completion.bash.inc'

alias droplet='ssh -i ~/.ssh/digitalocean root@104.131.21.146'

alias update_prod='grunt prod;appcfg.py update .'

export PATH=$PATH:/usr/local/m-cli
