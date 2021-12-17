# Assume clonedd to ~/dotfiles.

# soft-link
ln -sf $PWD/emacs/emacs ~/.emacs
ln -sf $PWD/git/gitignore_global ~/.gitignore_global
ln -sf $PWD/zsh/bash_profile ~/.bash_profile
ln -sf $PWD/zsh/bash_python ~/.bash_python
ln -sf $PWD/zsh/bash_shopify ~/.bash_shopify

# assume .zshrc exists
touch ~/.zshrc
echo "source $PWD/zsh/zshrc" >> ~/.zshrc

# files that need editing / not needed on `spin``
if [ ! $SPIN ]; then
  mkdir ~/.gnupg
  ln -sf $PWD/gnupg/gpg-agent.conf ~/.gnupg/gpg-agent.conf
  cp $PWD/gnupg/gpg.conf ~/.gnupg/gpg.conf
  cat $PWD/git/gitconfig >> ~/.gitconfig
  mkdir -p ~/.config/karabiner
  ln -sf $PWD/karabiner/karabiner.json ~/.config/karabiner/.
fi
