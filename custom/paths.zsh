#
# Paths for all Computers
#

#  Add the Scripts directory for all users
export PATH=$PATH:~/Scripts

#
# OS Specific Paths
#

# OS X Aliases
if [[ $CURRENT_OS == 'OS X' ]]; then
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
elif [[ $CURRENT_OS == 'Linux' ]]; then
	#  Add the Scripts/Arch directory
	export PATH=$PATH:~/Scripts/Arch
    export PATH=$PATH:~/Scripts/appengine
    export PATH=$PATH:~/.cabal/bin
    export PATH=$PATH:~/bin/

    #
    # User Specific Aliases
    #

    if [[ $USER == 'davis' ]]; then
        # Home Linux
    elif [[ $USER == 'davisjos' ]]; then
        # Work Linux

        # Android SDK Tools
        export PATH=$PATH:~/Programming/SDKs/tools
        # Android SDK Platform Tools
        export PATH=$PATH:~/Programming/SDKs/platform-tools
    fi
elif [[ $CURRENT_OS == 'Cygwin' ]]; then
    #
fi
