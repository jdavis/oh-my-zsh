# Don't do xmodmap on OS X
if [[ $CURRENT_OS == 'OS X' ]]; then
    return
fi

# Check to make sure xmodmap exists
hash xmodmap >> /dev/null 2>&1 || {
    return
}

# Load Vim xmodmap, only if xhost succeeds
if [ -s ~/.xmodmap-vim ]; then
    xhost >> /dev/null 2>&1 && xmodmap ~/.xmodmap-vim
fi
