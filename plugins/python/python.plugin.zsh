if [ -f "$HOME/.pyrc" ]; then
    export PYTHONSTARTUP=~/.pyrc
fi

# Don't write bytecode. It clutters up the Finder/Explorer.
export PYTHONDONTWRITEBYTECODE=x

# Find python file
alias pyfind='find . -name "*.py"'

# Remove python compiled byte-code
alias pyclean='find . -type f -name "*.py[co]" -delete'

# Grep among .py files
alias pygrep='grep --include="*.py"'
