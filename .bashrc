export PATH="/usr/local/opt/python/libexec/bin:/usr/local/bin:$PATH"

# virtualenv and virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
source /usr/local/bin/virtualenvwrapper.sh


if [ -f ~/dev/personal/dot_files/.local_changes ]; then
	. ~/dev/personal/dot_files/.local_changes
fi

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
