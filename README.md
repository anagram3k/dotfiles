# how to setup
echo ".cfg" >> .gitignore
git clone <remote-git-repo-url> $HOME/.cfg
alias config='/usr/bin/git --git-dir=<path to .cfg’s Git directory> --work-tree=$HOME'
config config --local status.showUntrackedFiles no
config checkout 


# If there are conflits 
mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
