alias aps="apt search"
alias la="ls -lthr | tail"
alias dfa='df  -h | grep -v -e '\''loop\|tmpfs\|udev'\'' | awk '\''NR>1 { print $6 " " $5 " " $4}'\'' | column -t'

alias do_backup='rsync -zavh --exclude backup.001 --exclude backup.7z /disk2/luis/Backup/ /media/luis/Backup/Backup/'
alias test_backup=''

alias 7zmax='7z a -t7z -mx=9 -mfb=273 -ms -md=31 -myx=9 -mtm=- -mmt -mmtf -md=1024m -mmf=bt3 -mmc=10000 -mpb=0 -mlc=0'

alias mkauto='sudo apt-mark auto'
