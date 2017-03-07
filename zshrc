source /usr/share/zsh/share/antigen.zsh
export TERM="xterm-256color"

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle sudo
antigen bundle pip
antigen bundle command-not-found
antigen bundle extract
antigen bundle npm
antigen bundle node
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
# Zsh autosuggestions
antigen bundle zsh-users/zsh-autosuggestions


# Symfony plugins
antigen bundle voronkovich/symfony.plugin.zsh

# Load the theme.
antigen theme bhilburn/powerlevel9k powerlevel9k
DEFAULT_USER=`whoami`



# Settings
#export PATH=$PATH':/root/.gem/ruby/2.4.0/bin'
#export PATH=$PATH':/home/aspatari/.gem/ruby/2.4.0/bin'
#export GEM_HOME=$HOME/.gem
#export GEM_PATH=$HOME/.gem



# Aliass
alias rf="rm -rf"
alias google-chrome="google-chrome-stable"



# Tell antigen that you're done.
antigen apply
