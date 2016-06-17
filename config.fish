# Path to Oh My Fish install.
set -gx OMF_PATH "/Users/mnishikizawa/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/Users/mnishikizawa/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \cs 'peco_ssh (commandline -b)'
  bind \cq 'peco_ghq (commandline -b)'
end

#function fish_user_key_bindings
#  bind \cs 'peco_ssh (commandline -b)'
#end
