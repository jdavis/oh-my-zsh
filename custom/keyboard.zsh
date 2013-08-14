# Don't do xmodmap on OS X
if [[ $CURRENT_OS == 'OS X' ]]; then
    exit
fi

# Check to make sure xmodmap exists
hash xmodmap 2> /dev/null || {
    exit
}


# Load Vim xmodmap
if [ -s ~/.xmodmap-vim ]; then
    xmodmap ~/.xmodmap-vim
fi
