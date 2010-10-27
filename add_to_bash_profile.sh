#!/bin/bash
# 
# Add normal stuff to .bash_profile on a new machine
#
# Van Nguyen <thegoleffect@gmail.com>
# October 27, 2010
#

platform='unknown'
unamestr=`uname`

if [[ "$unamestr" == 'Darwin' ]]; then
  # OSX only: Prevent accidental logout on ctrl+d (requires 5x ctrl+d to exit)
  echo "shopt -s -o ignoreeof" >> ~/.bash_profile
fi

cat << EOF >> ~/.bash_profile
# Simplified aliases for ls
alias ls='ls -G'
alias ll='ls -FlsG'
alias l='ls -laG'

# Format command line prompt
export PS1="[\d \t] \u@\h:\W$ "

EOF

exit 0; # exit with a smile