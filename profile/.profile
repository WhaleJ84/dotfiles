# ========== [ sanity check ] ========== #

#echo 'sourced .profile'

# ========== [ shell agnostic ] ========== #

# Export all variables stored in the directory
if [ -d "$HOME/.config/environment.d" ]; then
    for file in $HOME/.config/environment.d/*; do
        source "$file"
    done
fi

# Load all aliases stored in the directory
if [ -d "$HOME/.config/aliases.d" ]; then
    for file in $HOME/.config/aliases.d/*; do
        source "$file"
    done
fi

# Add local scripts to PATH
[ -d "$HOME/.local/bin" ] && export PATH="$HOME/.local/bin:$PATH"

# Aliases
alias ls='ls --color=auto'
alias la='ls -alh'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias supdate='sudo apt update && sudo apt upgrade'
alias sautoremove='sudo apt autoremove'
alias sinstall='sudo apt install'
alias slist='sudo apt list --installed'
alias :q='exit'
alias :wq='exit'
alias :Wq='exit'
alias vi="$EDITOR"

# ========== [ other ] ========== #

xrandr --output DP2 --mode 3440x1440 --left-of LVDS1

