set LC_ALL en_US.UTF-8

# Ruby Stuff
set PATH $HOME/.rbenv/bin $PATH

# Local bins (pip)
set PATH $HOME/.local/bin $PATH

# Local modules (go)
set PATH /usr/local/go/bin $PATH
set PATH $HOME/go/bin $PATH
set GOPATH $HOME/go

# Custom bin
set PATH $HOME/bin $PATH

#kubectx and kubens
set PATH $HOME/.kubectx $PATH
set -gx PATH $PATH $HOME/.krew/bin

# Enable SSH Agent
fish_ssh_agent

# Enable shell magic, must be last
starship init fish | source
