# Most things copied from grb's dotfiles
setopt promptsubst
autoload -U promptinit
promptinit
prompt grb


# Stuff I copied in from my .bash_profile
export PATH=/opt/local/bin:/opt/local/sbin:$HOME/local/bin:$PATH
export PATH=$PATH:/usr/local/git/bin/
export MANPATH=/opt/local/share/man:$MANPATH

autoload -U compinit
compinit

# Add paths that should have been there by default
export PATH=/usr/local/sbin:/usr/local/bin:${PATH}
export PATH="$HOME/bin:$PATH"
export PATH="$PATH:~/.gem/ruby/1.8/bin"

# Add postgres to the path
export PATH=$PATH:/usr/local/pgsql/bin
export PATH=$PATH:/Library/PostgreSQL/8.3/bin

# Unbreak broken, non-colored terminal
export TERM='xterm-color'
alias ls='ls -G'
alias ll='ls -lG'
alias duh='du -csh'
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"

# Unbreak history
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

export EDITOR=vi
# GNU Screen sets -o vi if EDITOR=vi, so we have to force it back. What the
# hell, GNU?
set -o emacs

autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line

export WORDCHARS='*?[]~&;!$%^<>'

export ACK_COLOR_MATCH='red'

# ACTUAL CUSTOMIZATION OH NOES!
# gd() { git diff $* | view -; }
# gdc() { gd --cached $*; }
# alias pygrep="grep --include='*.py' $*"
# alias rbgrep="grep --include='*.rb' $*"
alias r=rails
# alias t="script/test $*"
# alias f="script/features $*"
# alias g="bundle exec guard $*"
alias sr="screen -r"
# alias gx="gitx"
# alias gxa="gitx --all"
function mcd() { mkdir -p $1 && cd $1 }
alias :q="echo YOU FAIL"
alias :w="echo YOU FAIL"
# alias misc="cd /Volumes/misc"
# function cdf() { cd *$1*/ } # stolen from @topfunky

alias git=hub

[[ -f ~/.localrc ]] && . ~/.localrc
