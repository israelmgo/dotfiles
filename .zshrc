# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="nebirhos"

#------------------------------
# Historial
#------------------------------
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt hist_ignore_all_dups # ignorar duplicados

export EDITOR="vim" 

# color code completion!!!!  Wohoo!
zstyle ':completion:*' list-colors "=(#b) #([0-9]#)*=36=31"
zstyle ':completion:*' menu select=1 _complete _ignored _approximate
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([%0-9]#)*=0=01;31'

# aliases
  alias ls='ls --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
  alias pubkey='cat ~/.ssh/id_rsa.pub'
  alias dropbox='~/.dropbox-dist/dropboxd &'
  alias js='jekyll2.0 serve --detach'
  alias jk='pkill ruby-mri'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ssh-agent ruby)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/lib/qt-3.3/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/home/israel/.local/bin:/home/israel/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='gvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
 export SSH_KEY_PATH="~/.ssh/dsa_id"

