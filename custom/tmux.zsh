#
# A function to mimic custom aliases for Tmux. I get tired of having to
# remember Tmux's arbitrary aliases.
#
# To add an alias, just add a line to the case statement in the t() function.
# From then on, you can run `t a dev` which will turn into something like `tmux
# attach-session -t dev` which saves a lot of typing.
#
#  Author: Josh Davis
# Contact: josh@joshldavis.com
#    Site: http://joshldavis.com
#


function t() {
    # Set our default values
    args=()

    if [[ "$1" == 'h' ]] || [[ "$1" == 'help' ]] || [[ "$1" == 'man' ]] ; then
        help=1
        a=$2
    else
        help=0
        a=$1
    fi

    # Evaluate our aliases
    case ${a} in
        a)
            args+=attach-session
            args+='-t';;
        d)
            args+=detach-session;;
        n)
            args+=new-session;;
        *)
            args+=${a};;
    esac

    # Check if help is being ran
    if [[ "$help" == 1 ]] ; then

        # Either print that there is no alias for that
        # or print the alias
        if [[ "$a" == "$args" ]] ; then
            echo "No tmux alias for '${a}'"
        else
            echo "Tmux argument '${a}' aliased to 'tmux ${args}'"
        fi
        return
    fi

    first=0
    for arg in "$@" ; do
        # Skip the first argument, the alias
        if [[ "$first" == 0 ]] ; then
            first=1
        else
            args+=${arg}
        fi

    done

    # Run tmux on our newly generated commands
    tmux ${args}
}
