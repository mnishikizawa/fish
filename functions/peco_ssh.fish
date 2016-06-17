function peco_ssh
  if test (count $argv) = 0
    set peco_flags --layout=bottom-up 
  else
    set peco_flags --layout=bottom-up --query "$argv"
  end

  grep -iE "^host[[:space:]]+[^*]" ~/.ssh/config |peco --layout=bottom-up |awk '{print $2}' | read -l line

  if [ $line ]
   #commandline ssh "$line"
   eval ssh "$line"
  else
    commandline ''
  end
end
 
