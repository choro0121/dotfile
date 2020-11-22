# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# check vscode
if [ -n "$PS1" ]; then
  # start tmux
  if [ $SHLVL = 1 ]; then
    exec tmux
  fi

  # start fish
  exec fish
fi

