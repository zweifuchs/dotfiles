# Path to your oh-my-zsh installation.


alias kk='/usr/local/bin/kubectl'

export TIME_STYLE=long-iso
case "$(uname -s)" in

   Darwin)
     echo 'Mac OS X'
export ZSH=/Users/alfredeichenseher/.oh-my-zsh
export PATH="/Users/alfredeichenseher/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"
alias emacs='open -a /Applications/Emacs.app $1'
source $HOME/.zsh-osx
     ;;

   Linux)
     echo 'Linux'
export ZSH=/home/alf/.oh-my-zsh
export _Z_DATA="$HOME/.config/.z"
export PATH="/home/alf/tools/phpstorm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"
export PATH="/home/alf/tools/z:$PATH"
. /home/alf/tools/z/z.sh
     ;;

esac


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"

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
plugins=(git, symfony2)

# User configuration

# export PATH="/home/alf/tools/phpstorm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"

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

#source /usr/local/share/chruby/chruby.sh
#source /usr/local/share/chruby/auto.sh


source $HOME/.aliases


if ! { [ "$TERM" = "screen" ] && [ -n "$TMUX" ]; } then
fortune | cowsay
fi

# Include Drush bash customizations.
if [ -f "/home/alf/.drush/drush.bashrc" ] ; then
  source /home/alf/.drush/drush.bashrc
fi

# Include Drush completion.
# if [ -f "/home/alf/.drush/drush.complete.sh" ] ; then
#   source /home/alf/.drush/drush.complete.sh
# fi

autoload bashcompinit
bashcompinit
source /home/alf/.drush/drush.complete.sh
source /home/alf/.additional_aliases/wp-completion.bash

# Include Drush prompt customizations.
if [ -f "/home/alf/.drush/drush.prompt.sh" ] ; then
  source /home/alf/.drush/drush.prompt.sh
fi

if [[ "$COLORTERM" == "xfce4-terminal" ]] ; then
	# export TERM=xterm-256color
	# to get color support in vim / tmux combo
	[[ $TMUX = "" ]] && export TERM="xterm-256color"
fi

if [ -f ".aliases" ] ; then
	source .aliases
fi

export PATH=$PATH:/usr/local/go/bin:$HOME/go/libs/bin:$HOME/go/code/bin:$HOME/bin
export GOPATH=$HOME/go/libs:$HOME/go/code
export GOBIN=$HOME/go/code/bin

# add minituls
export PATH=$PATH:$HOME/mkutil

alias vimgo='vim -u ~/.vimrc.go'
alias uget='uget-gtk'
alias thedeploy='BUNDLE_GEMFILE=/home/alf/prj/ruby/deploy/Gemfile bundle exec  ruby /home/alf/prj/ruby/deploy/deploy.rb'
alias ttime='BUNDLE_GEMFILE=/home/alf/prj/ruby/teatime/Gemfile bundle exec  ruby /home/alf/prj/ruby/teatime/teatime.rb'

alias gam="git add -A && git commit -m"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/alfredeichenseher/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/alfredeichenseher/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/alfredeichenseher/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/alfredeichenseher/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

#chruby ruby-2.6.1
function swap()
{
    local TMPFILE=tmp.$$
    mv "$1" $TMPFILE && mv "$2" "$1" && mv $TMPFILE "$2"
}

eval "$(direnv hook zsh)"

if [ -f $HOME/.config/pass/pass_completion ]; then
	autoload -U $HOME/.config/pass/pass_completion  
	compinit
fi

# tmux random status colour
alias tmuxr='tmux set status-bg colour$((RANDOM % 254))'

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

if [ -d ~/aliases ]; then
  for file in ~/aliases/*; do
      source "$file"
  done
fi


ZSH_THEME="powerlevel10k/powerlevel10k"

echo "kubectl source complete ..."
source <(kubectl completion zsh)
echo "source 10k ..."

	
#source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[[ ! -f ~/.p10k.zsh ]] || source  ~/.p10k.zsh && source ~/powerlevel10k/powerlevel10k.zsh-theme
#echo "pre source"
#source  ~/run10k.sh
#echo "post source"

