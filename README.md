# Dotfiles repo

Bare git repository for storing dotfiles.

For details look in https://www.atlassian.com/git/tutorials/dotfiles


# Initial setup
```
echo ".cfg" >> .gitignore
git clone <remote-git-repo-url> $HOME/.cfg
alias config='/usr/bin/git --git-dir=<path to .cfg’s Git directory> --work-tree=$HOME'
config config --local status.showUntrackedFiles no
config checkout 
```

_If there are conflits run this:_
```
mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
```
