#!/bin/zsh

# For the current directory, use start_directory="."
start_directory="$HOME"

# For ignoring hidden directories, add the -not -path '*/\.*' option to find
# For ignoring certain directories, add the -not -path '*/directory_name*' option to find
selected_directory=$(find "$start_directory" -type d 2>/dev/null | fzf +m)

if [ -n "$selected_directory" ]; then
    code "$selected_directory"
else
    echo "No directory selected."
fi

