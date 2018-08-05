

export TERM="xterm-256color"
#export EDITOR='code'
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
antigen bundle django
antigen bundle virtualenv
antigen bundle pip
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle steven-omaha/aurman-zsh-completion
# Zsh autosuggestions
antigen bundle zsh-users/zsh-autosuggestions


# Symfony plugins
antigen bundle voronkovich/symfony.plugin.zsh

# Load the theme.
antigen theme bhilburn/powerlevel9k powerlevel9k
DEFAULT_USER=`whoami`

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv status root_indicator background_jobs history time)


# Virtualenv Wrapper

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages -p python3'
source /usr/bin/virtualenvwrapper.sh

## =============================================================================
##                                 Aliases
## =============================================================================

## ===================== System ================================================
alias rf="rm -rf"
alias google-chrome="google-chrome-stable"
alias run-mailhog="docker run -p 1025:1025 -p 8025:8025 -d mailhog/mailhog"

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



## ===================== Django ===================================================

alias pm="python manage.py"
alias pmrs="python manage.py runserver 0.0.0.0:8000"
alias pmrsp="python manage.py runserver_plus 0.0.0.0:8000"
alias pmm="python manage.py migrate"
alias pmmm="python manage.py makemigrations"
alias pmshp="python manage.py shell_plus"
# alias pmcs="python manage.py collectstatic --noinput"
# alias pmdbsh="python manage.py dbshell"
# alias pmdd="python manage.py dumpdata"
# alias pmld="python manage.py loaddata"
# alias pmsh="python manage.py shell"
# alias pmsm="python manage.py schemamigration"
# alias pmsync="python manage.py syncdb --noinput"
# alias pmt="python manage.py test"


# Tell antigen that you're done.
antigen apply
