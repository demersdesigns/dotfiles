export PATH="$HOME/bin:$PATH"

#-------------------------------------------------------------
# Enable Terminal Colors & Add Color
#-------------------------------------------------------------
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

#-------------------------------------------------------------
# Load RVM into a shell session *as a function*
#-------------------------------------------------------------
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

#-------------------------------------------------------------
# GIT Terminal Tab Completion
#-------------------------------------------------------------
source ~/dotfiles/git-completion.bash
source ~/dotfiles/git-prompt.sh
 
export PS1='[\w$(__git_ps1 " (%s)")]\n\$ '

#-------------------------------------------------------------
# Show/Hide Hidden Files
#-------------------------------------------------------------
alias showhidden="defaults write com.apple.finder AppleShowAllFiles -bool YES && killall Finder && echo 'Hidden files are now showing.'"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles -bool NO && killall Finder && echo 'Hidden files are now Hidden.'"

#-------------------------------------------------------------
# Show/Hide Desktop Icons
#-------------------------------------------------------------
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

#-------------------------------------------------------------
# Open Bash Profile
#-------------------------------------------------------------
alias bashprofile='subl ~/dotfiles/.bash_profile'

#-------------------------------------------------------------
# Create New Virtual Host
#-------------------------------------------------------------
alias addvhost='subl /Applications/MAMP/conf/apache/httpd.conf && subl /etc/hosts'

#-------------------------------------------------------------
# Open File in Finder
#-------------------------------------------------------------
alias reveal='open -R'

#-------------------------------------------------------------
# Show Enhanced Version of ls
#-------------------------------------------------------------
alias ls='ls -laxo'

#-------------------------------------------------------------
# Get IP Address
#-------------------------------------------------------------
alias ip ='netstat -p tcp'

#-------------------------------------------------------------
# Generic Aliases
#-------------------------------------------------------------
#alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'
alias h='history'

#-------------------------------------------------------------
# Shortcuts
#-------------------------------------------------------------
alias downloads='cd ~/Downloads'

# Sometimes I type one or the other
alias docs='cd ~/Documents'
alias documents='cd ~/Documents'

# Home work directory
alias work='cd ~/Documents/Projects'

# Work directory
alias projects='cd ~/Projects'

# Dotfiles directory
alias dotfiles='cd ~/dotfiles'

#-------------------------------------------------------------
# Sites
#-------------------------------------------------------------
alias github='open -a /Applications/Google\ Chrome.app http://www.github.com'

#-------------------------------------------------------------
# GIT
#-------------------------------------------------------------
alias gs='git status'
alias gco='git checkout'
alias ga='git add'
alias gaa='git add .'
alias gp='git push origin'
alias gc='git commit -m'
alias gcl='git clone'
