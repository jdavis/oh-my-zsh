#
# Functions
#

# Display Content of cd folder
function cd() {
    builtin cd $* && ls;
}

#Get IP
function ip-addr() {
    curl -s http://checkip.dyndns.org | sed 's/[a-zA-Z<>/ :]//g';
}

# Display a random Slashdot, HTTP header, Futurama quote
function futurama() {
    curl -Is slashdot.org | egrep ^X-(F|B) | cut -d - -f 2
}

# uncompress depending on extension...
function extract() {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)
                tar xvjf $1;;
            *.tar.gz)
                tar xvzf $1;;
            *.bz2)
                bunzip2 $1;;
            *.rar)
                unrar x $1;;
            *.gz)
                gunzip $1;;
            *.tar)
                tar xvf $1;;
            *.tbz2)
                tar xvjf $1;;
            *.tgz)
                tar xvzf $1;;
            *.zip)
                unzip $1;;
            *.Z)
                uncompress $1;;
            *.7z)
                7z x $1;;
            *)
                echo "'$1' cannot be extracted via >extract<";;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}
