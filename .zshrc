# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:~/bin:/usr/local/go/bin
# Path to your oh-my-zsh installation.
export ZSH=/Users/radovanovicm/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="risto"
ZSH_THEME="gentoo"
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
plugins=(git bundler osx rake ruby brew history history-substring-search kubectl)


source $ZSH/oh-my-zsh.sh
export GOPATH=~/go/
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias envsubst='/usr/local/Cellar/gettext/0.19.8.1/bin/envsubst'

# PYTHON
export WORKON_HOME=$HOME/.envs
source /usr/local/bin/virtualenvwrapper.sh

# KUBERNETS
alias k8s-prod-a='kubectl config use-context prod-eu-central-1a.cloud.shore.com'
alias k8s-prod-b='kubectl config use-context prod-eu-central-1b.cloud.shore.com'
alias k8s-staging-c='kubectl config use-context staging-eu-central-1c.cloud.shore.com'
alias k8s-current='kubectl config current-context'
alias dokcer='docker'
alias k8s-shore-describe='_kdes(){kubectl describe pod $1 -n shore};_kdes'
alias k8s-localsearch-describe='_kdes(){kubectl describe pod $1 -n localsearch};_kdes'
alias k8s-shore-get='kubectl get pods -n shore'
alias k8s-localsearch-get='kubectl get pods -n localsearch'
alias k8s-shore-shell-exec='_ksh(){kubectl exec -ti "$1" -n shore sh}; _ksh'
alias k8s-localsearch-shell-exec='_ksh(){kubectl exec -ti "$1" -n localsearch sh}; _ksh'
alias k8s-pod='_ksh(){for cluster in k8s-prod-{a,b} k8s-staging-c; do echo "*****************"; echo $cluster ; echo "*****************"; kubectl get pods --all-namespaces | grep -i $1 ; done}; _ksh'

alias k8s-config='_config(){run_command.sh -u $(echo $USERNAME) -s $1 -e $2};_config'
alias k8s-run='_run(){
args=""
for i in "${@:3}"
do
    args="$args $i"
done
run_command.sh -u $(echo $USERNAME) -s $1 -e $2 -c $args
};_run'

eval "$(rbenv init -)"
