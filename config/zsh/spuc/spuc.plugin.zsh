ff () { /usr/bin/find . -iname "$@" ; }
# fgrep () { find . -type f -iname "$2" -print0 | xargs -0 grep "$1" ; }
fport() { lsof -nP -i4TCP:"$1" | grep LISTEN } 

alias dps='docker ps --format "table {{.ID}}\t{{.Image}}\t{{.Command}}\t{{.Status}}\t{{.Ports}}"'
alias dsa='docker stop $(docker ps -a -q)'
alias encPriv='gocryptfs ~/_priv/pCloud/enc ~/Private'
alias upHosts='python3 updateHostsFile.py -b -r --extensions adware malware fakenews'
alias spuc='cd ~/_dev/spucman/'

export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'


# power completion / abbreviation expansion / buffer expansion
# see http://zshwiki.org/home/examples/zleiab for details
# less risky than the global aliases but powerful as well
# just type the abbreviation key and afterwards 'ctrl-x .' to expand it
declare -A abk
setopt extendedglob
setopt interactivecomments
abk=(
#   key   # value                  (#d additional doc string)
#A# start
    '...'  '../..'
    '....' '../../..'
#A# end
)

export PATH="$HOME/.local/bin:/usr/local/go/bin:/usr/local/sbin:/Users/spuchmann/bin:/usr/local/opt/python@3.8/libexec/bin:/Applications/pgAdmin\ 4.app/Contents/SharedSupport:$PATH"
export PATH="$PATH:$(go env GOPATH)/bin/"

if (( $+commands[zoxide] )); then
    eval "$(zoxide init --cmd cd zsh)"
fi
