# Path to your oh-my-zsh installation.
  export ZSH=/home/ljj/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="steeef"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

  export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

[[ -s /home/ljj/.autojump/etc/profile.d/autojump.sh ]] && source /home/ljj/.autojump/etc/profile.d/autojump.sh

#export PYTHONPATH=/home/ljj/workspace/image2text/neupack/:/home/ljj/python3-neupack:$PYTHONPATH
export PYTHONPATH=/home/ljj/workspace/image2text/neupack/:$PYTHONPATH
export PATH=/home/ljj/env/bin:$PATH

#export PATH=/home/ljj/anaconda2/bin:$PATH
export LC_ALL=en_US.UTF-8
export PATH=/usr/local/cuda/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:/usr/local/cudnn
export PYTHONPATH=/home/ljj/workspace/MegSkull:/home/ljj/workspace/Meg2D:/home/ljj/workspace/MegHair/:$PYTHONPATH
#tmux source-file ~/.tmux.conf
export LD_LIBRARY_PATH=/usr/local/cudnn/:$LD_LIBRARY_PATH
export CPATH=/usr/local/cudnn/:$CPATH
export LIBRARY_PATH=/usr/local/cudnn/:$LD_LIBRARY_PATH
export PATH=/home/ljj/workspace/neupack_image/sprite/scripts:$PATH
export PATH=/home/ljj/env/bin:$PATH
export PATH=/home/ljj/megdl/bin:/home/ljj/neupeak/bin:$PATH
export PYTHONPATH=/home/ljj/megdl/MegHair:/home/ljj/megdl/MegSkull/:/home/ljj/neupeak/:$PYTHONPATH
export PATH=/home/ljj/env/usr/local/bin:$PATH
export PATH=/home/ljj/megtext/scripts:$PATH


#alias diff='diff -y --suppress-common-lines '
#
