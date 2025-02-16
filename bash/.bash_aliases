# Listing and navigation
alias ll='ls -alF'          # Long listing format with file types and hidden files
alias la='ls -A'            # List all files including hidden files, but exclude . and ..
alias l='ls -CF'            # Compact listing format with file types
alias ..='cd ..'            # Go up one directory
alias ...='cd ../..'        # Go up two directories
alias ~='cd ~'              # Shortcut to home directory

# File operations
alias cp='cp -i'            # Prompt before overwriting files
alias mv='mv -i'            # Prompt before overwriting files
alias rm='rm -i'            # Prompt before deleting files
alias mkdir='mkdir -pv'     # Create parent directories as needed and show progress

# Disk usage and file size
alias df='df -h'            # Display disk space in human-readable format
alias du='du -h --max-depth=1' # Show directory sizes in human-readable format

# Process management
alias psu='ps aux | grep '  # Find a process by name
alias killall='killall -v'  # Kill all processes matching a name and show what was killed

# Networking
alias myip='curl ifconfig.me' # Get external IP address

# System and updates
alias update='sudo apt-get update && sudo apt-get upgrade'  # Update and upgrade the system
alias reboot='sudo systemctl reboot'  # Reboot the system
alias shutdown='sudo systemctl poweroff'  # Shut down the system

# Quick access to configuration files
alias bashrc='nano ~/.bashrc'  # Edit .bashrc
alias aliases='nano ~/.bash_aliases'  # Edit .bash_aliases

# Miscellaneous
alias cls='clear'             # Clear the terminal
alias h='history'             # Show command history
alias grep='grep --color=auto' # Highlight search results
alias ping='ping -c 5'        # Limit pings to 5 packets

#github
# GitHub Aliases
alias gh='git status'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gco='git checkout'
alias gbr='git branch'
alias gbs='git branch -a'
alias gst='git status'
alias gl='git log'
alias glp='git log --pretty=oneline --abbrev-commit'
alias gpl='git pull'
alias gps='git push'
alias gpl='git pull'
alias gd='git diff'
alias gr='git remote -v'
alias gdf='git diff --stat'
alias gds='git diff --staged'
alias gdf='git diff'
alias gdc='git diff --cached'
alias ga='git add'
alias gaa='git add .'
alias gcp='git cherry-pick'
alias gch='git checkout'
alias gcl='git clone'
alias gk='gitk'
alias gpo='git push origin'
alias gs='git stash'
alias gsp='git stash pop'
alias gss='git stash show'
alias gsb='git stash branch'
alias gtags='git tag -l'
alias gt='git tag'
alias gtag='git tag'
alias gtg='git tag -a'
alias gtga='git tag -a'

# Path customization
function fullpath() {
    PS1='\[\033[01;93m\]\u@\h:\[\033[01;95m\]$(pwd)\[\033[00m\]\$ '
}

function normpath() {
    PS1='\[\033[01;93m\]u@h:\[\033[01;95m\]\w\[\033[00m\]\$ '
}


function abbrevpath() {
    PS1='\[\033[01;93m\]\[\033[01;95m\]\w\[\033[00m\]\$ '
}
