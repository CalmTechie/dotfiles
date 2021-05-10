fpath=($ZDOTDIR/external $fpath)

###########
# Aliases #
###########
source "$XDG_CONFIG_HOME/zsh/aliases"

#############################
# AutoComletion from Prezto #
#############################
autoload -U compinit; compinit

#include dotfiles
_comp_options+=(globdots)
source ~/dotfiles/zsh/external/completion.zsh

##########
# Prompt #
##########
autoload -Uz prompt_purification_setup; prompt_purification_setup

##################
# Dir Stack opts #
##################
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

######
# bd #
######
source ~/dotfiles/zsh/external/bd.zsh

if [ $(command -v "fzf") ]; then
	source /usr/share/fzf/completion.zsh
	source /usr/share/fzf/key-bindings.zsh
fi

#############
# dircolors #
#############
#source /usr/share/zsh/plugins/zsh-dircolors-solarized/zsh-dircolors-solarized.zsh

################
# Autoload X11 #
################
if [ "$(tty)" = "/dev/tty1" ];
then
	pgrep i3 || exec startx "$XDG_CONFIG_HOME/X11/.xinitrc"
fi

####################
# Syntax highlight #
####################
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
