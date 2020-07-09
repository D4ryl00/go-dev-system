#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Golang
export GOPATH=$HOME/go
PATH=$PATH:/usr/lib/go-1.14/bin:$GOPATH/bin

# tmux auto attach
if [ -z "$TMUX" ]; then
	    tmux attach -t default || tmux new -s default
fi
