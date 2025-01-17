# Setting up the Path
set -e fish_user_paths

# Custom sourcing for the aliases
source ~/.config/fish/aliases.fish

# Custom sourcing of colors, exports, multi-function fish files
source ~/.config/fish/conf.d/_exports.fish

# TODO(env): check based on target machine (Intel vs ARM)
# Homebrew generated by `brew shellenv`
set -gx HOMEBREW_PREFIX "/opt/homebrew";
set -gx HOMEBREW_CELLAR "/opt/homebrew/Cellar";
set -gx HOMEBREW_REPOSITORY "/opt/homebrew/Homebrew";
set -q PATH; or set PATH ''; set -gx PATH "/opt/homebrew/bin" "/opt/homebrew/sbin" $PATH;
set -q MANPATH; or set MANPATH ''; set -gx MANPATH "/opt/homebrew/share/man" $MANPATH;
set -q INFOPATH; or set INFOPATH ''; set -gx INFOPATH "/opt/homebrew/share/info" $INFOPATH;
set -g fish_user_paths "/opt/homebrew/bin" $fish_user_paths

# Flutter
set -g fish_user_paths ~/tools/flutter/bin $fish_user_paths

# Maestro
set -g fish_user_paths $HOME/.maestro/bin $fish_user_paths

# User bin folder
set -g fish_user_paths ~/bin $fish_user_paths

# Python bin folder
set -g fish_user_paths /Users/tsyirvo/Library/Python/3.10/bin $fish_user_paths

# Volta
set -x VOLTA_HOME $HOME/.volta
set -g fish_user_paths $VOLTA_HOME/bin $fish_user_paths
corepack enable --install-directory ~/.volta/bin

# TODO(env): check based on target machine (Java version might be different)
# Java
set -x JAVA_HOME (/usr/libexec/java_home -v 17)

# Android
set -x ANDROID_HOME ~/Library/Android/sdk
set -x ANDROID_SDK_ROOT ~/Library/Android/sdk
set -x ANDROID_AVD_HOME ~/.android/avd
set -gx PATH $ANDROID_HOME/platform-tools $PATH
set -gx PATH $ANDROID_HOME/tools $PATH
set -gx PATH $ANDROID_HOME/emulator $PATH

# Python
set -Ux PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin
pyenv init - | source

# Start Starship Prompt
starship init fish | source

# Stop brew install from updating everything
set -x HOMEBREW_NO_AUTO_UPDATE 1

# Set Visual Studio Code as default editor
set -x --global EDITOR code

# rbenv config
status --is-interactive; and rbenv init - fish | source