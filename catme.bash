## cat this into your .profile or whatever
## to include all the dotfiles in this repo

if [ -f "~/.bash_alias" ] ; then
  source ~/.bash_alias
fi

if [ -f "~/.bash_ssh-agent" ] ; then
  source ~/.bash_ssh-agent
fi

if [ -f "~/.bash_functions" ] ; then
  source ~/.bash_functions
fi
