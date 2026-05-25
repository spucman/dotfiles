ff () { /usr/bin/find . -iname "$@" ; }
# fgrep () { find . -type f -iname "$2" -print0 | xargs -0 grep "$1" ; }

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

export PATH="$HOME/.local/bin:/usr/local/go/bin:/usr/local/sbin:$HOME/bin:/usr/local/opt/python@3.8/libexec/bin:/Applications/pgAdmin\ 4.app/Contents/SharedSupport:$PATH"
export PATH="$PATH:$(go env GOPATH)/bin/"

if (( $+commands[zoxide] )); then
    eval "$(zoxide init --cmd cd zsh)"
fi

if (( $+commands[bat] )); then
    BAT_THEME='rose-pine'
    alias cat='bat'
fi

if (( $+commands[docker] )); then
  alias dps='docker ps --format "table {{.ID}}\t{{.Image}}\t{{.Command}}\t{{.Status}}\t{{.Ports}}"'
  alias dsa='docker stop $(docker ps -a -q)'
  alias drm='docker rm -v $(docker ps --filter status=exited -q)'
fi

# (only on dev machines)
if (( $+commands[nerdctl] )); then
#    export CONTAINERD_ROOTLESS_ROOT=$HOME/.local/share/containerd-rootless
#    export CONTAINERD_ROOTLESS_STATE=$XDG_RUNTIME_DIR/containerd-rootless
#    export CONTAINERD_ADDRESS=$XDG_RUNTIME_DIR/containerd-rootless/containerd.sock
#    export BUILDKIT_HOST=unix:///run/user/$(id -u)/buildkit/buildkitd.sock

    alias nerdctl='sudo nerdctl'
    alias dps='nerdctl ps'
    alias dsa='nerdctl stop $(nerdctl ps -a -q)'
    alias drm='nerdctl rm -v $(nerdctl ps --filter status=exited -q)'
    fport() { sudo lsof -nP -i4TCP:"$1" | grep LISTEN } 
fi

if (( $+commands[podman] )); then
    alias dps='podman ps'
    alias dsa='podman stop $(podman ps -a -q)'
    alias drm='podman rm -v $(podman ps --filter status=exited -q)'
fi

if (( $+commands[gocryptfs] )); then
  alias encPriv='gocryptfs ~/_priv/pCloud/enc ~/Private'
fi


# true if myfunc NOT defined as a function
if (( ! ${+functions[fport]} )); then
    fport() { lsof -nP -i4TCP:"$1" | grep LISTEN } 
fi


if (( $+commands[nvim] )); then
    export EDITOR=nvim
fi
