#
# Functions
#

# Check for updates to the GitHub dotfiles repo
function update-dotfiles() {
    builtin cd ~/
    echo Checking for existing Git repository...
    if [[ -d "./.git" ]] ; then
        echo Git repository found, pulling...
        git pull

        while true; do
            echo -n "Do you wish to update .zsh_secret?: "
            read yn
            case $yn in
                [Yy]* )
                    update-secret
                    break;;
                [Nn]* ) break;;
                * ) echo "Please answer yes or no.";;
            esac
        done

    else
        echo No repository found. Cloning from Github...
        # Clone with the PID as a sort of unique identifier.
        # Not completely safe proof but the odds are small
        git clone git@github.com:jdavis/dotfiles.git dotfiles$$
        echo Copying files...
        cp -a dotfiles$$/ .
        echo Deleting files...
        rm -rf dotfiles$$/

        update-secret
    fi
}

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
            *.tar.bz2)   tar xvjf $1        ;;
            *.tar.gz)    tar xvzf $1     ;;
            *.bz2)       bunzip2 $1       ;;
            *.rar)       unrar x $1     ;;
            *.gz)        gunzip $1     ;;
            *.tar)       tar xvf $1        ;;
            *.tbz2)      tar xvjf $1      ;;
            *.tgz)       tar xvzf $1       ;;
            *.zip)       unzip $1     ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1    ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}
