#!/bin/bash
# 
# Add normal stuff to .gitconfig on a new machine
#
# Van Nguyen <thegoleffect@gmail.com>
# October 27, 2010
#

platform='unknown'
unamestr=`uname`

if [[ "$unamestr" == 'Darwin' ]]; then
  cat << EOF >> ~/.gitconfig
[core]
	editor = mate -w  
EOF
fi

cat << EOF >> ~/.gitconfig
[alias]
	co = checkout
	st = status
	ci = commit
	pll = pull origin master
	psh = push origin master
	df = !git diff | mate
	save = stash save
	pop = stash pop
	stat = status
[color]
	ui = true
	branch = auto
	diff = auto
	status = auto
[color "branch"]
	current = yellow reverse
	local = yellow 
	remote = green
[color "diff"]
	meta = yellow bold
	frag = magenta bold
	old = red bold
	new = green bold
[color "status"]
	added = yellow
	changed = green
	untracked = cyan
EOF

exit 0; # exit with a smile