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

if [ -e "$HOME/.config/bash/rc" ]; then
    source "$HOME/.config/bash/rc"
fi

# ========== [ other ] ========== #
