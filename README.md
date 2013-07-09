This is how I track my dot files and keep everything in sync between machines.  If there is anything helpful, you are free to use it.


    cd ~
    mv .bashrc .bashrc.old
    ln -s ~/dev/dot_files/.bashrc .bashrc
    
    mv .vimrc .vimrc.old
    ln -s ~/dev/dot_files/.vimrc .vimrc

