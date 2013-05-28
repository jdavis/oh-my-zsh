#
# Aliases for all Computers
#

# Builtin aliases
alias ll='ls -l'
alias la='ls -a'

alias back='cd -'

# ZSH Global Aliases
alias -g L=' | less'
alias -g T=' | tail -20'
alias -g NUL=' > /dev/null 2>&1'

# I like to be safe...
alias rm='rm -i'

# Alias Git, moved most other aliases to ~/.gitconfig
# For some reason, Git doesn't like capitalized aliases. Some must remain.
alias g='git'
alias gp='git pull'
alias gP='git push'

#
# OS Specific Aliases
#

# OS X Aliases
if [[ $CURRENT_OS == 'OS X' ]]; then
	# Hidden files
	alias showhiddenfiles='defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder'
	alias hidehiddenfiles='defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder'

	# Custom search script
	alias ebook='locates ~/EBooks '

	# Journal Alias
	alias journal='vim ~/Documents/Journal/`date "+%Y"`/`date "+%B"`/`date "+%d-%A"`.txt'

	#
	# Application aliases
	#
	alias vine='open -a Vine\ Server'
	alias ss='/System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine &'

	# Open from command line
	alias finder='open -a Finder '
elif [[ $CURRENT_OS == 'Linux' ]]; then
    #
    # Global Linux
    #

    # Misc Aliases
	alias ls='ls --color=auto'

	# Extensions
	alias -s avi=vlc
	alias -s html=$BROWSER
	alias -s pdf=epdfview
	alias -s txt=$EDITOR
	alias -s text=$EDITOR

	# Images
	alias -s png=feh
	alias -s jpeg=feh
	alias -s jpg=feh
	alias -s gif=feh

	# Source Extensions
	alias -s hs=$EDITOR
	alias -s c=$EDITOR

    #
    # User Specific Aliases
    #

    if [[ $USER == 'davis' ]]; then
        # Monitors
        # Moved to a separate script in ~/Scripts
        # alias vga='xrandr --output CRT1 --same-as LCD --auto'
        # alias dual-monitors='xrandr --output CRT1 --right-of LCD --mode 1660x1050'

        # Music Collection
        alias music-update='chmod -R a+X /home/davis/Music/Artists'

        # Hahah, that's what it looks like to me
        alias yogurt='yaourt'
    elif [[ $USER == 'davisjos' ]]; then
        alias eclimd=$ECLIPSE_HOME/eclimd
    fi
elif [[ $CURRENT_OS == 'Cygwin' ]]; then
    alias py='/cygdrive/c/Python27/python'
fi
