git clone https://github.com/jimgraham/dot-files.git .dot-files

# soft-link
ln -s .dot-files/emacs/emacs .emacs
ls -s .dot-files/git/gitignore_global .gitignore_global

# assume .zshrc exists
echo "source $HOME/.dot-files/zsh/zshrc" >> .zshrc

# files that need editing
mkdir .gnupg
ln -s .dot-files/gnupg/gpg-agent.conf .gnupg/gpg-agent.conf
cp .dot-files/gnupg/gpg.conf .gnupg/gpg.conf
