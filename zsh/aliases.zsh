# Sublime Text
alias e='subl . &'                        # open current directory
alias hosts='sudo /bin/subl /etc/hosts'   # Edit hosts file

alias genpasswd='openssl rand -base64 12' # Password generator

# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# Resume wget
alias wget='wget -c'

alias df='df -H'
alias du='du -ch'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

# Flush Directory Service cache
alias flushdns="dscacheutil -flushcache; sudo killall -HUP mDNSResponder"

# Recursively delete `.DS_Store` files
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"

# File size of a file(s)
alias fs="stat -f \"%z bytes\""

# Empty the Trash on all mounted volumes and the main HDD
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; rm -rfv ~/.Trash"

# Alias cat to use pygments
alias c='pygmentize -O style=monokai -f console256 -g'

# Global ps, awesome
alias gps="ps -c -r -ax -o command,pid,pcpu,time | sed 's/\(PID *\)%/\1 %/' | head -n 11 && echo && ps -c -m -ax -o command,pid,pmem,rss=RSIZE | sed 's/\(.\{23\}\)/\1 /' | head -n 9"

# Smart defaults
alias mkdir='mkdir -p'

# Easy python webserver
alias pyserve='python -m SimpleHTTPServer'

# Easy fileserver
alias share='ip addr | grep inet; python -m http.server'

# Start screen saver
alias afk="/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine"

# Log off
alias logoff="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Nice git aliases
alias glt="git describe --abbrev=0 --tags"  # Get latest Git tag in project
alias gbd="git branch -d"                   # Delete the branch
alias gfp="git fetch -p"                    # Fetch the latest upstream changes
