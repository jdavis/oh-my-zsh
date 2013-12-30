#
# Various Functions for CentOS usage
#

# Add/Remove a service to the startup
startup() {
    if [ $# -lt 2 ]; then
        echo "Usage: startup {on|off} <service>"
        return 1
    fi


    case "$1" in
        on)
            sudo chkconfig --add $2
            sudo chkconfig $2 on
            ;;
        off)
            sudo chkconfig $2 off
            ;;
        *)
            echo "Usage: startup {on|off} <service>"
            return 1
            ;;
    esac
}

