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

# Alias Git, moved all other aliases to ~/.gitconfig
alias g='git'

#  Add the Scripts directory for all users
export PATH=$PATH:~/Scripts

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

	#
	# Path Additions
	# It makes adding and removing a lot easier
	#

    # Prefix /usr/local/bin for brew
    export PATH=/usr/local/bin:$PATH

	# Normal Bin
	export PATH=$PATH:~/bin
	# MIT-Scheme
	export MITSCHEME_LIBRARY_PATH=/usr/local/lib/mit-scheme-c/
	# For Scheme
	export PATH=$PATH:~/bin/scheme/bin
	# Nmap
	export PATH=$PATH:/Users/Davis/.nmap
	# Lua
	export PATH=$PATH:~/bin/lua
	# Prolog
	export PATH=$PATH:~/bin/prolog/bin
	# Erlang
	export PATH=$PATH:~/bin/erlang/bin
	# JavaScript Lint
	export PATH=$PATH:~/bin/jsl
	#  Django
	export PATH=$PATH:/Library/Python/2.5/site-packages/django/bin
	#  MacPorts
	export PATH=$PATH:/opt/local/bin
	#  Add the Scripts/Mac directory
	export PATH=$PATH:~/Scripts/Mac
    # Add all npm packages
    export PATH=$PATH:/usr/local/share/npm/bin
fi

# Arch Aliases
if [[ $CURRENT_OS == 'Linux' ]]; then
	alias ls='ls --color=auto'

	# Monitors
	# Moved to a separate script in ~/Scripts
	# alias vga='xrandr --output CRT1 --same-as LCD --auto'
	# alias dual-monitors='xrandr --output CRT1 --right-of LCD --mode 1660x1050'

	# Various Eclim
	alias eclim='$ECLIM_ECLIPSE_HOME/eclipse'
	alias eclimd=~/.eclipse/org.eclipse.platform_3.5.0_1543616141/configuration/eclipse/eclimd

	# Music Collection
	alias music-update='chmod -R a+X /home/davis/Music/Artists'

	# Hahah, that's what it looks like to me
	alias yogurt='yaourt'

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

	#  Add the Scripts/Arch directory
	export PATH=$PATH:~/Scripts/Arch
fi
