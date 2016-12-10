
source /usr/share/zsh/scripts/antigen/antigen.zsh


# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle sudo
antigen bundle pip
antigen bundle command-not-found
antigen bundle extract
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
# Zsh autosuggestions
antigen bundle zsh-users/zsh-autosuggestions


# Symfony plugins
antigen bundle voronkovich/symfony.plugin.zsh

# Load the theme.
antigen theme agnoster
DEFAULT_USER=`whoami`





# Aliass
alias rf="rm -rf"
alias google-chrome="google-chrome-stable"



# Tell antigen that you're done.
antigen apply
