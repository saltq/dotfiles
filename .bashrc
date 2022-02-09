#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='\u \W > '
export PS1="\[$(tput bold)\]\[\033[38;5;203m\]\u\[$(tput sgr0)\] \[$(tput bold)\]\W\[$(tput sgr0)\] \033[1m>\033[0m "
#export GTK_IM_MODULE='ibus'
#export QT_IM_MODULE='ibus'
#export XMODIFIERS=@im='ibus'

#Toolbar for anthy
#ibus-daemon -drx
#export PS1="\[[38;5;209m\][\[$(tput sgr0)\]\[$(tput bold)\]\[[38;5;180m\]\u\[$(tput sgr0)\]\[[38;5;209m\]@\[$(tput sgr0)\]\[[38;5;210m\]\h\[$(tput sgr0)\] \W\[$(tput sgr0)\]\[[38;5;209m\]]\[$(tput sgr0)\]\$ \[$(tput sgr0)\]"
alias lcddem="easyrpg-player --encoding 932 --project-path ~/conpyuuta/lcddem"
alias yume2kki="easyrpg-player --encoding 932 --project-path ~/conpyuuta/yume2kki"
alias yumenikki="easyrpg-player --project-path ~/conpyuuta/yumenikki"
alias flow="easyrpg-player --encoding 932 --project-path ~/conpyuuta/dotflow"
alias va11halla="wine ~/conpyuuta/'VA-11 Hall-A - Cyberpunk Bartender Action'/'VA-11 Hall A.exe'"
alias mario64="mupen64plus ~/conpyuuta/mario64/Super\ Mario\ 64\ \(U\)\ \[\!\].z64"
alias coff="systemctl poweroff"
alias fakesteam="wine /home/poppy/.wine/drive_c/'Program Files (x86)'/Steam/steam.exe"
alias isaac="wine ~/.wine/drive_c/'Program Files (x86)'/Steam/steamapps/common/'The Binding of Isaac Rebirth/isaac-ng.exe'" 
alias metroid="snes9x-gtk /home/salty/.snes9x/rom/Super\ Metroid\ \(Japan\,\ USA\)\ \(En\,Ja\).sfc"
alias discord="./Downloads/Discord/Discord"
alias hollow="wine ~/conpyuuta/Hollow\ Knight\ Godmaster/hollow_knight.exe"
alias lss="ls && du -h --max-depth 1"
alias omori="wine ~/.wine/drive_c/CHRONOS\ Releases/OMORI/OMORI.exe"
alias anime="gitclones/ani-cli/ani-cli"
#source ~/.fancy-bash-promt.sh
alias config='/usr/bin/git --git-dir=$HOME/.dotfs/ --work-tree=$HOME'
