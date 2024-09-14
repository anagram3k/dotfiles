

dfa() { 
    df  -Th | grep -v -e 'loop\|tmpfs\|udev' | awk 'NR>1 { print $7 " " $6 " " $5}' | column -t 
}

alias aps="apt search"

alias la="ls -lAthr --color | grep -v '^d' | tail -15"
alias syslog='tail -f /var/log/syslog'

alias do_backup='rsync -zavh --exclude backup.001 --exclude backup.7z /disk2/luis/Backup/ /media/luis/Backup/Backup/'
alias test_backup=''

alias 7zmax='7z a -t7z -mx=9 -mfb=273 -ms -md=31 -myx=9 -mtm=- -mmt -mmtf -md=1024m -mmf=bt3 -mmc=10000 -mpb=0 -mlc=0'

alias mkauto='sudo apt-mark auto'

alias ce='chezmoi edit -a'
alias gitc='git clone --recursive --depth 1'
alias gits='git status -s -b'

show_wine_processes(){ 
    \{pgrep -a wine; pgrep -af system32; pgrep -a proton \} | uniq
}
kill_wine(){ 
    pkill -e wine; pkill -ef system32; pkill -e proton 
}

alias hx=helix
