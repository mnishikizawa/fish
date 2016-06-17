function peco_ghq
  set peco_flags --query "$argv"
  
  ghq list -p | peco $peco_flags | read line

  if [ $line ]
    cd $line
    commandline -f repaint
   end

end
