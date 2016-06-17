function peco_ssh
  set peco_flags --layout=bottom-up --query "$argv"

  grep -iE "^host[[:space:]]+[^*]" ~/.ssh/config |peco --layout=bottom-up |awk '{print $2}' | read -l line

  if [ $line ]
   #commandline ssh "$line"
   eval ssh "$line"
  end
end
 
