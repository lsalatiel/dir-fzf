#!/bin/zsh

# For the current directory, use start_directory="." or start_directory=$(pwd)
start_directory="$HOME"

# For ignoring hidden directories, add the -not -path '*/\.*' option to find
# For ignoring certain directories, add the -not -path '*/directory_name*' option to find
selected_directory=$(find "$start_directory" -type d 2>/dev/null | fzf +m)

if [ -n "$selected_directory" ]; then
    if { [ "$TERM_PROGRAM" = "tmux" ] && [ -n "$TMUX" ]; } then
        tmux new-window -c "$selected_directory"
    else
        tmux new -c "$selected_directory"
    fi
else
    echo "No directory selected."
fi

