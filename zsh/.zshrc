HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -e
zstyle :compinstall filename '$HOME/.zshrc'

TERM=xterm-256color
# Aliases
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ls='eza -la --icons --header --git --time-style=long-iso'
alias lsg='eza -la --icons --header --git --time-style=long-iso --grid'
alias ip='ip -color=auto'
alias bat='bat --paging=never'
alias vg='vagrant'
alias vp='fd -t file -t d . /home/zilq/projects | fzf --print0 | xargs -0 -o nvim'
alias vc='fd -t file -t d . /home/zilq/.config | fzf --print0 | xargs -0 -o nvim'
alias ng='nvim -c Neogit'

export EDITOR='/usr/bin/nvim'
export FZF_ALT_C_COMMAND='(fd -t d . -H $HOME)'
export FZF_ALT_C_OPTS="--header 'CHANGE DIR'"
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border sharp --margin 1'
export FZF_CTRL_R_OPTS="--header 'CMD HISTORY'"
export FZF_CTRL_T_OPTS="--header 'SELECT FILE OR DIR'"
export PAGER='less -R --use-color -Dd+r -Du+b'
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export PATH=$PATH:/home/zilq/.spicetify:/home/zilq/bin:/home/zilq/.local/bin:/usr/local/go/bin:/home/zilq/go/bin:/home/zilq/.cargo/bin
export CLASSPATH=~/.java/libs/algs4.jar
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
source <(fzf --zsh)
. "$HOME/.asdf/asdf.sh"
fpath=(${ASDF_DIR}/completions $fpath)
autoload -Uz compinit && compinit
