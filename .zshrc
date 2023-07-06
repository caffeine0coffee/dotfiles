source ~/.bashrc

# basics -------------------------------------------
# Use powerline
USE_POWERLINE="true"

# aliases
alias confzsh="vim ~/.zshrc"

# exports
KEYTIMEOUT=1

# history
HISTFILE=~/.zsh/zsh_hist
HISTSIZE=1000
SAVEHIST=1000
setopt extended_history
setopt hist_ignore_dups

# disable default ^S function
stty stop undef

# custom wigets -------------------------------------------
# histry search
function peco-history-selection() {
    BUFFER=`history -n 1 | tac  | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}

# recent directroy search
if [[ -n $(echo ${^fpath}/chpwd_recent_dirs(N)) && -n $(echo ${^fpath}/cdr(N)) ]]; then
    autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
    add-zsh-hook chpwd chpwd_recent_dirs
    zstyle ':completion:*' recent-dirs-insert both
    zstyle ':chpwd:*' recent-dirs-default true
    zstyle ':chpwd:*' recent-dirs-max 1000
    zstyle ':chpwd:*' recent-dirs-file "$HOME/.cache/chpwd-recent-dirs"
fi
zle -N peco-history-selection

function peco-cdr () {
    local selected_dir="$(cdr -l | sed 's/^[0-9]\+ \+//' | peco --prompt="cdr >" --query "$LBUFFER")"
    if [ -n "$selected_dir" ]; then
        BUFFER="cd ${selected_dir}"
        zle accept-line
    fi
}
zle -N peco-cdr


# Zinit -------------------------------------------
### Added by Zinit's installer {
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust
# }

# Plugins
zinit ice depth=1; zinit light romkatv/powerlevel10k
zinit load zsh-users/zsh-syntax-highlighting
zinit load zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit load mollifier/cd-gitroot


# key bindings -------------------------------------------
bindkey -v
bindkey -r "^D" "^G" "^H" "^J" "^L" "^N" "^P"

bindkey "^?" backward-delete-char               # BS
bindkey -a "H" vi-digit-or-beginning-of-line
bindkey -a "L" vi-end-of-line

# for custom wigets
bindkey '^R' peco-history-selection
bindkey '^S' peco-cdr


# Environment init -------------------------------------------
# pyenv
#eval "$(pyenv init -)"
#export PYENV_PATH=$HOME/.pyenv

# nvm
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


# p10k -------------------------------------------
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# vcpkg completeion
autoload bashcompinit
bashcompinit
source /home/caffeine/.local/vcpkg/scripts/vcpkg_completion.zsh
