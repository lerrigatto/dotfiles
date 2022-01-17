set LC_ALL en_US.UTF-8

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

set -gx GPG_TTY (tty) 

# Enable SSH Agent
fish_ssh_agent

# JAVA FTW
set -gx JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64

# Firefox wayland fix
set -gx MOZ_ENABLE_WAYLAND 1
# Zoom wayland fix
set -gx QT_QPA_PLATFORM wayland-egl
# Intellij wayland fix
set -gx _JAVA_AWT_WM_NONREPARENTING 1
# XDG fix
set -gx SDL_VIDEODRIVER wayland
set -gx XDG_CURRENT_DESKTOP sway
set -gx XDG_SESSION_DESKTOP sway

# Enable zoxide
zoxide init fish | source

# Enable shell magic, must be last
# starship init fish | source
