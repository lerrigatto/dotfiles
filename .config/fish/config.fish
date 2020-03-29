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

# Ansible shit
set -gx ANSIBLE_ROLES_PATH /home/elacava/dev/jobteaser/stack-ansible/roles

set fish_function_path $fish_function_path "/home/elacava/.local/lib/python3.7/site-packages/powerline/bindings/fish"
powerline-setup

# Enable SSH Agent
fish_ssh_agent

# Enable shell magic, must be last
starship init fish | source
