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

###########
# Key fix #
###########
function zle-line-init () { echoti smkx }
function zle-line-finish () { echoti rmkx }
zle -N zle-line-init
zle -N zle-line-finish

bindkey    "^[[3~"          delete-char
bindkey    "^[3;5~"         delete-char

################
# Autoload X11 #
################
if [ "$(tty)" = "/dev/tty1" ];
then
	exec startx "$XDG_CONFIG_HOME/X11/.xinitrc"
fi

####################
# Syntax highlight #
####################
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
