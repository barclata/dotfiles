# Lines configured by zsh-newuser-install
HISTFILE=$XDG_CACHE_HOME/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -e
bindkey    "^[[3~"          delete-char
bindkey    "^[3;5~"         delete-char
bindkey	   "^[[1;5D"		backward-word
bindkey	   "^[[1;5C"		forward-word

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/barclata/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# PowerLevel9K Theme
POWERLEVEL9K_BATTERY_STAGES="▁▂▃▄▅▆▇█"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator battery)

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="$ "
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# My aliases
alias ls='ls -v -h --color=auto --group-directories-first'
alias poly='rlwrap poly'
volume() {
	local VOL=`pamixer --get-volume`
	local MUTE=`pamixer --get-mute`
	echo "Volume: $VOL"
	echo "Mute: $MUTE"
}

# current projects
export CAKEVER="$HOME/projects/sldg/cakeml-verif/src"

alias rm="trash"
alias syncthing='(syncthing &)'
alias masterpdf='(masterpdfeditor5 &)'
alias top='htop -u barclata'
alias ghc='stack ghc -- '
alias ghci='stack ghci -- '
alias runghc='stack runghc -- '
alias spike='ssh barclata@24.225.100.197'

alias ranger='ranger --choosedir=$XDG_CONFIG_HOME/ranger/.rangerdir; LASTDIR=`cat $XDG_CONFIG_HOME/ranger/.rangerdir`; cd "$LASTDIR"'

alias hol='rlwrap hol'
# commands to connect to and fix wifi
alias JAYHAWK='(connmanctl connect wifi_983b8f87691e_4a41594841574b_managed_ieee8021x &)'
alias APT='(connmanctl connect &)'
alias fixwifi='connmanctl disable wifi; sleep .2s; connmanctl enable wifi'

# coq shortcuts
alias coq_mk='coq_makefile -f _CoqProject -o Makefile'

# current project's shortcuts
alias cakeToCoq='~/cakeToCoq.sh'
# alias cakeToSexp='cakePrime --skip_type_inference=true --exclude_prelude=true --print_sexp'
# alias sexpToCoq='~/projects/sldg/cake_sexp_translator/_build/default/bin/main.exe'

# emacs aliases
# alias emacsterm='emacsclient -t'
# alias emacs='emacsclient -c'

alias ":q"='bye'

PS1='[%n:%d]$ '




# opam configuration
test -r /home/barclata/.opam/opam-init/init.zsh && . /home/barclata/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
