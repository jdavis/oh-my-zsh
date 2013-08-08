# Check to make sure xmodmap exists
hash xmodmap 2> /dev/null || {
    exit
}

# Load Vim xmodmap
if [ -s ~/.xmodmap-vim ]; then
    xmodmap ~/.xmodmap-vim
fi
