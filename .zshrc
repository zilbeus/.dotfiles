source $HOME/antigen.zsh
source $HOME/.antigenrc

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
TERM=xterm-256color
# Aliases
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ls='exa -la --icons --header --git --time-style=long-iso'
alias lsg='exa -la --icons --header --git --time-style=long-iso --grid'
alias ip='ip -color=auto'
alias bat='bat --paging=never'
alias vg='vagrant'
alias dotcfg='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias cat='bat'

export PAGER='most'
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

