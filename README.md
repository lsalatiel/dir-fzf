# dir-fzf.
Small scripts to fuzzy find directories.

Inspired by [ThePrimeagen](https://github.com/ThePrimeagen). Couldn't find his scripts, so I made a really simple one just to get things done.

You can find my dotfiles [here](https://github.com/lsalatiel/dotfiles)

[](https://github.com/lsalatiel/dir-fzf/assets/110201578/3b5bbd26-a8f3-4baa-baec-da597b48b740)


## Dependencies
- [fzf](https://github.com/junegunn/fzf)
- [tmux](https://github.com/tmux/tmux/wiki) or [vscode](https://code.visualstudio.com/), it depends on which script you will use.

## Installation

- Create a folder called .scripts in your home directory 
```
mkdir ~/.scripts
```
- Cd into it
```
cd ~/.scripts
```
- Clone the respository
```
git clone https://github.com/lsalatiel/dir-fzf.git
```

## Usage

### Zsh

- Tmux fzf
    ```
    alias (somekey)="$HOME/.scripts/dir-fzf/src/tmux_fzf.sh"
    ```

    ```
    bindkey -s ^f "(somekey)\n"
    ```

- Vscode fzf
    ```
    alias (somekey)="$HOME/.scripts/dir-fzf/src/vscode_fzf.sh"
    ```
    ```
    bindkey -s ^f "(somekey)\n"
    ```

The alias command is used just to clean up the hide the path to the script.

In "bindkey -s ^f..." I'm chossing to bind it to Ctrl+f. You can change that.

Replace (somekey) with whatever you want, it really doesn't matter. It will only change what will appear on your terminal when you press Ctrl+f.
You can also use it to call the script directly in the terminal if you want.

### Bash

- Tmux fzf
    ```
    alias (somekey)="$HOME/.scripts/tmux_fzf.sh"
    ```
    ```
    bind -x '"\C-f":"(somekey)"'
    ```
- Vscode fzf
    ```
    alias (somekey)="$HOME/.scripts/vscode_fzf.sh"
    ```
    ```
    bind -x '"\C-f":"(somekey)"'
    ```
"\C-f" == Ctrl+f, I'm chossing to bind it to Ctrl+f. You can change that.

## Change the script to your taste

In the scripts file, you can change to search only some directories, or to ignore some directories.

You can also change the directory you are starting the search.
