if [ -f "$HOME/.pyrc" ]; then
    export PYTHONSTARTUP=~/.pyrc
fi

# Find python file
alias pyfind='find . -name "*.py"'

# Remove python compiled byte-code in either current directory or in a
# list of specified directories
function pyclean() {
    ZSH_PYCLEAN_PLACES=${*:-'.'}
    find ${ZSH_PYCLEAN_PLACES} -type f -name "*.py[co]" -delete
    find ${ZSH_PYCLEAN_PLACES} -type d -name "__pycache__" -delete
}

# Grep among .py files
alias pygrep='grep --include="*.py"'

