# .z is taken by my submodule
# Change it to ~/.zdata
if [[ ! -f "~/.zdata" ]] ; then
    touch ~/.zdata
fi

_Z_DATA='~/.zdata'

# Load z.sh if it exists
if [[ -d "~/.z" && -f "~/.z/z.sh" ]] ; then
    . ~/.z/z.sh
fi
