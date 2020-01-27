################################################################################
# Source antigen and install some bundles
################################################################################
source $(brew --prefix)/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen theme https://github.com/wesbos/Cobalt2-iterm cobalt2

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh
antigen bundle tarruda/zsh-autosuggestions
antigen bundle brew
antigen bundle docker
antigen bundle heroku
antigen bundle git
antigen bundle node
antigen bundle npm
antigen bundle z

antigen apply

################################################################################
# Configure some bundles
################################################################################

# zsh-history-substring-search: Bind UP and DOWN arrows to history search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

################################################################################
# Aliases
################################################################################
alias dpsa='docker ps -a'
alias youtube-mp3='youtube-dl -x --audio-format mp3'
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias ngrok="/Applications/ngrok"
alias python="python3"
alias pip="pip3"
alias code="code-insiders"

export EDITOR="code-insiders"
export N_PREFIX=$HOME/.n

export PATH
export PATH="$HOME/.rvm/bin:$PATH"
export PATH="$HOME/Library/Python/3.7/bin:$PATH"
export PATH="$N_PREFIX/bin:$PATH"

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/richard/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;
