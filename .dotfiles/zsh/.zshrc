#!/bin/sh
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"
export ZPLUG_HOME=~/.zplug
source ~/.zplug/init.zsh
# history
HISTFILE=~/.zsh_history

# source
zplug "$HOME/.config/zsh/aliases.zsh"
zplug "$HOME/.config/zsh/exports.zsh"

# plugins
zplug "$HOME/.config/zsh/plugins/dirpersist.zsh"

# plug "esc/conda-zsh-completion"
zplug "zsh-users/zsh-autosuggestions"
zplug "hlissner/zsh-autopair"
zplug "zap-zsh/supercharge"
# plug "zap-zsh/vim"
zplug "zap-zsh/zap-prompt"
zplug "zap-zsh/fzf"
zplug "zap-zsh/exa"
zplug "zsh-users/zsh-syntax-highlighting"

# keybinds
bindkey '^ ' autosuggest-accept

# Fuzzy Finder with Ctrl + f
bindkey -s '^f' "tmux-sessionizer\n"
# Fuzzy Finder with Ctrl + f
bindkey -s '^n' "nscript hotcommand\n"
#code
bindkey -s '^d' "code .\n"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if command -v bat &> /dev/null; then
  alias cat="bat -pp --theme \"Dracula\""
  alias catt="bat --theme \"Dracula\""
fi

# CTRL-Z to fg back in suspended process
fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="fg"
    zle accept-line
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

# File with custom aliases specific to your PC.
[ -r "$HOME/.profile" ] && source "$HOME/.profile"

# Other
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export NSCRIPT_PATH="$HOME/nscript"
eval "$(pyenv init -)"

