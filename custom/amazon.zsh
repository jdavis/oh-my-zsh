alias rhel-start='VBoxManage startvm "RHEL5 64-bit desktop" --type headless'
alias rhel-fs='mkdir -p ~/Programming/RHEL/workspace 2>1 /dev/null; sshfs -o allow_other -o idmap=user $USER@$USER.desktop:/workplace/$USER ~/Programming/RHEL/workspace'
alias rhel-ssh='ssh $USER@$USER.desktop'
