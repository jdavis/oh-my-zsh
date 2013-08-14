# Don't do xmodmap on OS X
if [[ $CURRENT_OS == 'OS X' ]]; then
    return
fi

# Check to make sure xmodmap exists
hash xmodmap 2> /dev/null || {
    return
}


# Load Vim xmodmap
if [ -s ~/.xmodmap-vim ]; then
    xmodmap ~/.xmodmap-vim
fi
