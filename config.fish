# Path to Oh My Fish install.
set -gx OMF_PATH "/Users/mnishikizawa/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/Users/mnishikizawa/.config/omf"

set -gx PATH $HOME/.anyenv/bin $PATH

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

set fish_theme agnoster

function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \cs 'peco_ssh (commandline -b)'
  bind \cq 'peco_ghq (commandline -b)'
end

function z --description 'jump around'
  __z $argv
end
