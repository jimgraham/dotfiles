# Assume clonedd to ~/dotfiles.

# soft-link
ln -sf $PWD/emacs/emacs ~/.emacs
ln -sfn $PWD/emacs/emacs.d ~/.emacs.d
ln -sf $PWD/git/gitignore_global ~/.gitignore_global
ln -sf $PWD/zsh/bash_profile ~/.bash_profile
ln -sf $PWD/zsh/bash_python ~/.bash_python
ln -sf $PWD/zsh/bash_shopify ~/.bash_shopify

# assume .zshrc exists
touch ~/.zshrc
echo "source $PWD/zsh/zshrc" >> ~/.zshrc

## pryrc
ln -sf $PWD/pry/pryrc ~/.pryrc

# files that need editing / not needed on `spin``
if [ ! $SPIN ]; then
  #-- uncomment if updating but remember to add your GPG public key 
  #   via `gpg --list-keys --keyid-format=SHORT`
  #   and add to gpg-agent.conf & .gitconfig
  
  #mkdir ~/.gnupg
  #ln -sf $PWD/gnupg/gpg-agent.conf ~/.gnupg/gpg-agent.conf
  #cp $PWD/gnupg/gpg.conf ~/.gnupg/gpg.conf
  #cat $PWD/git/gitconfig >> ~/.gitconfig
  mkdir -p ~/.config/karabiner
  ln -sf $PWD/karabiner/karabiner.json ~/.config/karabiner/.
  mkdir ~/.iterm2
  ln -sf $PWD/iterm2/com.googlecode.iterm2.plist ~/.iterm2/.
fi

if [ $SPIN ]; then
  export EDITOR='emacs -nw'
fi
