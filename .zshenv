# Default editor
export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -c"
export SUDO_EDITOR="emacsclient -t"
export VISUAL="emacsclient -c -a emacs"

# prettify ls output (really did this just for broken symlinks)
export LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31::*.zip=01;31::*.gz=01;31:'

# location of HOL4
export HOLDIR="/opt/hol"

# location of Doom Emacs config
export DOOMDIR="~/.config/doom"

# location of Lem library
export LEMLIB="/home/barclata/projects/lem/library"

# location of CakeML
export CAKEMLDIR="/home/barclata/projects/cakeml"

# path extension
export PATH=$PATH:$HOME/bin_no_pac:$HOME/.local/bin:$HOLDIR/bin:$HOME/cake-x64-64
# Graal
export PATH=$HOME/projects/classes/768/final/graalvm-ce-1.0.0-rc15/bin:$PATH
# Cisco anyConnect
export PATH=$PATH:/opt/cisco/anyconnect/bin
# DOOM Emacs
export PATH=$PATH:$HOME/.emacs.d/bin
# XDG Base Directory spec
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_DATA_DIRS=/usr/local/share:/usr/share
export XDG_CONFIG_DIRS=/etc/xdg

# XDG Workarounds
# currently not using because Spacemacs is a big fat bitch
#export STACK_ROOT="$XDG_DATA_HOME"/stack

# I did this to make emacs shell stop bitching
export TERM=xterm-256color


