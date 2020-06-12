# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

## PATH ##
export ZSH="/home/koopernic/.oh-my-zsh"

## THEME ##
ZSH_THEME="powerlevel10k/powerlevel10k"

## AUTO-CORRECTION ##
ENABLE_CORRECTION='false'

## TIMESTAMPS ##
HIST_STAMPS="dd/mm/yyyy"

## COLORS ##
eval `dircolors ~/.dir_colors/dircolors`

## PLUGINS ##
plugins=(
  git
  zsh-autosuggestions
  history-substring-search
)

source $ZSH/oh-my-zsh.sh

## HIGHLIGHTING ##

source /home/koopernic/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## LARGE HISTORY FILE ##
HISTSIZE=10000000
SAVEHIST=10000000

## PREVENT DUPLICATES IN HISTORY ##
setopt hist_ignore_all_dups hist_save_nodups

## User configuration ##

# export MANPATH="/usr/local/man:$MANPATH"

## LANGUAGE ENVIRONMENT ##
# export LANG=es_AR.UTF-8

## ALIASES ##
# CD commands
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'

# Show open ports TCP/UDP
alias ports='netstat -tulanp'

# Know External IP
alias ipe='curl ipinfo.io/ip'

# Sort Files By File Size
alias lt='ls --human-readable --size -1 -S --classify'

# Shows Laptop gBattery %
#alias batt= "upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage"

#Make mount command output pretty and human readable format
alias mount='mount | column -t'

# show hidden files
alias l.='ls -d .* --color=auto' 

# Show sizes in MB
alias free='free -m' 

# Colors in GREP/ EGREP / FGREP / LS
alias ls='ls --color=auto --group-directories-first'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto' 

# List process
alias p='ps aux | grep -i ' 

#Update & Upgrade system
alias system-upgrade="sudo apt-get update && sudo apt-get upgrade && sudo apt-get full-upgrade &&sudo apt-get autoremove && sudo apt-get autoclean"

# Crontab
alias crontab='crontab -i'

# Get top process eating memory
alias psmem="ps auxf | sort -nr -k 4"
alias psmem10="ps auxf | sort -nr -k 4 | head -10"

# Get top process eating cpu
alias pscpu="ps auxf | sort -nr -k 3"
alias pscpu10="ps auxf | sort -nr -k 3 | head -10"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
