#
# Load the z script:
#   https://github.com/rupa/z
#

# .z is taken by my submodule
# Change it to ~/.zdata
export _Z_DATA=$HOME/.zdata

if [[ ! -f $_Z_DATA ]] ; then
    touch ~/.zdata
fi

# Load z.sh if it exists
if [[ -d "$HOME/.z" && -f "$HOME/.z/z.sh" ]] ; then
    . ~/.z/z.sh
fi
