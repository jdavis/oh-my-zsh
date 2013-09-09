# Don't do xmodmap on OS X
if [[ $CURRENT_OS == 'OS X' ]]; then
    return
fi

# Check to make sure xmodmap exists
hash xmodmap 2> /dev/null || {
    return
}

# Load Vim xmodmap, only if xhost succeeds
if [ -s ~/.xmodmap-vim ]; then
    xhost 2> /dev/null && xmodmap ~/.xmodmap-vim
fi
