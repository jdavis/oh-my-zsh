#
# Load the zsh-fuzzy-match completion
#   https://github.com/tarruda/zsh-fuzzy-match
#

# Where zsh-fuzzy-match submodule is located
FUZZY_PATH=$HOME/.oh-my-zsh/custom/zsh-fuzzy-match

# Load fuzzy-match.zsh if it exists
if [[ -d $FUZZY_PATH && -f "$FUZZY_PATH/fuzzy-match.zsh" ]] ; then
    source "$FUZZY_PATH/fuzzy-match.zsh"
fi
