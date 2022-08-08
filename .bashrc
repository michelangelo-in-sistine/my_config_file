# disable ctrl-s
stty ixoff -ixon

# console
PS1='\[\e[33;1m\]\u@\h:\w\n\$\[\e[m\] '

# up and down arrow, match the commands which start with the same fragment of a command
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'
