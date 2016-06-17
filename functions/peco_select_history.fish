function peco_select_history
  set peco_flags --query "$argv"

  history|peco $peco_flags|read line

  if [ $line ]
    commandline $line
  end
end
