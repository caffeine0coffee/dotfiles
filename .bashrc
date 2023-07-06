alias ls="ls --color=auto"
alias l="exa --icons --group-directories-first"
alias la="l -a"
alias ll="l -l"

alias rmrf="rm -rf"
alias reloadconf="exec $SHELL"
alias py="python3"

alias sai="sudo pacman -S"
alias saug="sudo pacman -Syu"

# pipe to Copy To Clipboard
alias ctc="xsel -bi"

alias cdu="cd .."
alias cddc="cd ~/Documents"
alias cddw="cd ~/Downloads"
alias cddwt="cd ~/Downloads/tmp"
alias cdex="cd ~/DevelopEnv/experiments"
alias cddv="cd ~/DevelopEnv"
alias cdgit="cd ~/DevelopEnv/git_repos"
alias cdsc="cd ~/Documents/MyScripts"

alias rger="ranger"

alias mkdircd="source ~/Documents/MyScripts/mkdircd.sh"

alias vvim="/usr/bin/vim"
alias vim="nvim"
alias nvim="/usr/bin/nvim"

alias confbash="vim ~/.bashrc"
alias confnvim="vim ~/.config/nvim/init.vim"
alias confvim="vim ~/.vimrc"
alias confssh="vim ~/.ssh/config"
alias conftmux="vim ~/.tmux.conf"
alias confkitty="vim ~/.config/kitty/kitty.conf"
alias confi3="vim ~/.i3/config"

alias dit="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

export EDITOR="/usr/bin/nvim"
export PATH="$PATH:/home/caffeine/Documents/MyScripts"
export PATH="$PATH:/.local/bin"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/caffeine/.sdkman"
[[ -s "/home/caffeine/.sdkman/bin/sdkman-init.sh" ]] && source "/home/caffeine/.sdkman/bin/sdkman-init.sh"
. "$HOME/.cargo/env"
