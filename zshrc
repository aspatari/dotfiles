powerline-daemon -q
source /usr/local/Cellar/antigen/2.2.3/share/antigen/antigen.zsh

export TERM="xterm-256color"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

eval "$(starship init zsh)"


# export POWERLEVEL9K_INSTALLATION_PATH=~/.antigen/bundles/bhilburn/powerlevel9k
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv status root_indicator background_jobs history time)


# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle sudo
antigen bundle pip
antigen bundle command-not-found
antigen bundle extract
antigen bundle z
antigen bundle django
antigen bundle virtualenv
antigen bundle pip
antigen bundle heroku
antigen bundle agkozak/zsh-z
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle steven-omaha/aurman-zsh-completion
# Zsh autosuggestions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle clvv/fasd
antigen bundle MichaelAquilina/zsh-you-should-use
antigen bundle supercrabtree/k
 
# Load the theme.
# antigen theme bhilburn/powerlevel9k powerlevel9k
DEFAULT_USER=`whoami`


# Virtualenv Wrapper

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages -p python'
# source /usr/bin/virtualenvwrapper.sh

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
alias gc="git commit -m "$1""
alias gaa="git add -A ."
alias gpo="git push origin $1"
alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glo="git log --oneline"
alias grhh="git reset --hard HEAD"
alias gcp="git cherry-pick $1"



## ===================== Django ===================================================

alias pm="python manage.py"
alias pmrs="python manage.py runserver_plus 0.0.0.0:8000"
alias pmm="python manage.py migrate"
alias pmmm="python manage.py makemigrations"
alias pmsh="python manage.py shell_plus"



alias lg="lazygit"
alias ld='lazydocker'
alias ls='exa'
alias p='poetry run'
alias pp='poetry run python'
alias t='poetry run task'


# Tell antigen that you're done.
antigen apply





# Created by `userpath` on 2020-04-06 16:46:09
export PATH="$PATH:/Users/aspatari/.local/bin"
export PATH="$PATH:/Users/aspatari/go/bin"
export PATH="/Users/aspatari/Library/Python/3.10/bin:$PATH"
fpath+=~/.zfunc
eval 
ZAPIER_AC_ZSH_SETUP_PATH=/Users/aspatari/Library/Caches/zapier-platform-cli/autocomplete/zsh_setup && test -f $ZAPIER_AC_ZSH_SETUP_PATH && source $ZAPIER_AC_ZSH_SETUP_PATH; # zapier autocomplete setup
export PATH="$HOME/.poetry/bin:$PATH"
export PATH="$HOME/.npm/bin:$PATH"


# Load stripe 
fpath=(~/.stripe $fpath)
autoload -Uz compinit && compinit -iexport PATH="$HOME/.npm/bin:$PATH"

zstyle ':completion:*' menu select
