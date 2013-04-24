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
export PATH="$HOME/bin:$PATH"
source ~/bin/git-completion.bash
source ~/bin/git-prompt.sh
 
export PS1='[\w$(__git_ps1 " (%s)")]\n\$ '

#-------------------------------------------------------------
# Show/Hide Hidden Files
#-------------------------------------------------------------
_showhidden() {
  defaults write com.apple.finder AppleShowAllFiles -bool YES;
  killall Finder
  echo "Hidden files are now showing."
}

alias showhidden=_showhidden


_hidehidden() {
  defaults write com.apple.finder AppleShowAllFiles -bool NO;
  killall Finder
  echo "Hidden files are now hidden."
}

alias hidehidden=_hidehidden

#-------------------------------------------------------------
# Show/Hide Desktop Icons
#-------------------------------------------------------------
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

#-------------------------------------------------------------
# Open Bash Profile
#-------------------------------------------------------------
_bashprofile() {
  sublime ~/.bash_profile
}

alias bashprofile=_bashprofile

#-------------------------------------------------------------
# Create New Virtual Host
#-------------------------------------------------------------
_addvhost() {
  sublime /Applications/MAMP/conf/apache/httpd.conf
  sublime /etc/hosts
}

alias addvhost=_addvhost

#-------------------------------------------------------------
# Open File in Finder
#-------------------------------------------------------------
alias reveal="open -R"

#-------------------------------------------------------------
# Show Enhanced Version of ls
#-------------------------------------------------------------
alias ls="ls -laxo"

#-------------------------------------------------------------
# Generic Aliases
#-------------------------------------------------------------
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'
alias h='history'
