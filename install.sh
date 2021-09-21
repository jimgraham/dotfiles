# Assume clonedd to ~/dotfiles.

# soft-link
ln -sf $HOME/dotfiles/emacs/emacs .emacs
ln -sf $HOME/dotfiles/git/gitignore_global .gitignore_global
ln -sf $HOME/dotfiles/zsh/bash_profile .bash_profile
ln -sf $HOME/dotfiles/zsh/bash_python .bash_python
ln -sf $HOME/dotfiles/zsh/bash_shopify .bash_shopify

# assume .zshrc exists
touch .zshrc
echo "source $HOME/dotfiles/zsh/zshrc" >> .zshrc

# files that need editing
if [ ! $SPIN ]; then
  mkdir .gnupg
  ln -sf $HOME/dotfiles/gnupg/gpg-agent.conf .gnupg/gpg-agent.conf
  cp $HOME/dotfiles/gnupg/gpg.conf .gnupg/gpg.conf
fi
