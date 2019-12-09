export PS1="\w> "


export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=~/bin:$PATH

# Setting PATH for MacPython 2.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
export PATH


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PYTHONPATH=/usr/local/Cellar/opencv/2.4.12_2/lib/python2.7/site-packages:$PYTHONPATH
export PYTHONPATH=/Applications/GoogleAppEngineLauncher.app/Contents/Resources/GoogleAppEngine-default.bundle/Contents/Resources/google_appengine/:$PYTHONPATH


# The next line updates PATH for the Google Cloud SDK.
# source '/Users/cotton/dev/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
# source '/Users/cotton/dev/google-cloud-sdk/completion.bash.inc'


export PATH=$PATH:/usr/local/m-cli


if [ -f ~/dev/personal/dot_files/.docker_aliases ]; then
	. ~/dev/personal/dot_files/.docker_aliases
fi

if [ -f ~/dev/personal/dot_files/.common_aliases ]; then
    . ~/dev/personal/dot_files/.common_aliases
fi

if [ -f ~/dev/personal/dot_files/.git_aliases ]; then
    . ~/dev/personal/dot_files/.git_aliases
fi

if [ -f ~/dev/personal/dot_files/.server_aliases ]; then
    . ~/dev/personal/dot_files/.server_aliases
fi

if [ -f ~/dev/personal/dot_files/.mac_aliases ]; then
    . ~/dev/personal/dot_files/.mac_aliases
fi

