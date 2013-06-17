alias rhel-start='VBoxManage startvm "RHEL5 64-bit desktop" --type headless'
alias rhel-fs='mkdir -p ~/Programming/RHEL/workspace >> /dev/null 2>&1; sshfs -o idmap=user -o nonempty $USER@$USER.desktop:/workplace/$USER ~/Programming/RHEL/workspace'
alias rhel-ssh='ssh $USER@$USER.desktop'
