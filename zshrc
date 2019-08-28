

export TERM="xterm-256color"


powerline-daemon -q
source /usr/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh

export POWERLEVEL9K_INSTALLATION_PATH=~/.antigen/bundles/bhilburn/powerlevel9k
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv status root_indicator background_jobs history time)


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
antigen bundle heroku
antigen bundle agkozak/zsh-z
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle steven-omaha/aurman-zsh-completion
# Zsh autosuggestions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle clvv/fasd

 
# Load the theme.
antigen theme bhilburn/powerlevel9k powerlevel9k
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

alias pm="pipenv run python manage.py"
#alias pmrs="pipenv run python manage.py runserver 0.0.0.0:8000"
alias pmrs="pipenv run python manage.py runserver_plus 0.0.0.0:8000"
alias pmm="pipenv run python manage.py migrate"
alias pmmm="pipenv run python manage.py makemigrations"
alias pmsh="pipenv run python manage.py shell_plus"
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

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/aspatari/.npm/_npx/30320/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/aspatari/.npm/_npx/30320/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/aspatari/.npm/_npx/30320/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /home/aspatari/.npm/_npx/30320/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /home/aspatari/.npm/_npx/30320/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /home/aspatari/.npm/_npx/30320/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh