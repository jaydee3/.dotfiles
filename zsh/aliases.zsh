if [ -f $DOTFILES_DIR/secret/aliases.zsh ]
then
  source $DOTFILES_DIR/secret/aliases.zsh
fi

alias edit='open -e'
alias ll='ls -halF'
alias findhere='find . -name'

# Quick way to rebuild the Launch Services database and get rid
# of duplicates in the Open With submenu.
alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'

alias fixSteamMic='sudo sqlite3 ~/Library/Application\ Support/com.apple.TCC/TCC.db "INSERT or REPLACE INTO access VALUES('kTCCServiceMicrophone','com.valvesoftware.steam',0,1,1,NULL,NULL,NULL,'UNUSED',NULL,0,1551892126);"'
