

export TERM="xterm-256color"
export POWERLEVEL9K_INSTALLATION_PATH=~/.antigen/bundles/bhilburn/powerlevel9k
source /usr/share/zsh/share/antigen.zsh


# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle sudo
antigen bundle pip
antigen bundle command-not-found
antigen bundle extract
antigen bundle z
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
# Zsh autosuggestions
antigen bundle zsh-users/zsh-autosuggestions


# Symfony plugins
antigen bundle voronkovich/symfony.plugin.zsh

# Load the theme.
antigen theme bhilburn/powerlevel9k powerlevel9k
DEFAULT_USER=`whoami`

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv status root_indicator background_jobs history time)

## =============================================================================
##                                 Aliases 
## =============================================================================

## ===================== System ================================================
alias rf="rm -rf"
alias google-chrome="google-chrome-stable"

## ===================== Git ===================================================
alias gi="git init"
alias gs="git status"
alias gd="git diff"
alias gdh="git diff HEAD"
alias gc="git clone $1 $2"
alias gcm="git commit -m "$1""
alias gaa="git add -A ."
alias gpo="git push origin $1"
alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glo="git log --oneline"
alias grhh="git reset --hard HEAD"
alias gcp="git cherry-pick $1"




# Tell antigen that you're done.
antigen apply
