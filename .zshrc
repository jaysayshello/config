# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="lambda"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"



#MAC VERSION
#Jay's Bash Profile
#Updated Apr, 2022

alias ae='code ~/.zshrc'
alias save='source ~/.zshrc'
alias bash='nano ~/.zshrc'
alias themes='cd ~/.oh-my-zsh/themes'

#local ssh
alias god.local='ssh n0tj@192.168.2.11'
alias lord.local='ssh jay@192.168.2.35'
alias lyr.local='ssh root@192.168.2.78'
alias kali='ssh root@10.211.55.4'

#public ssh/sshfs/sftp
alias lord='ssh -p 6001 jay@n0tj.duckdns.org'
alias sftpzeus='sftp -P 6003 jay@n0tj.duckdns.org'
alias lyr='ssh -p 6003 root@ip.n0tj.com'
alias sftplyr='sftp -P 6003 root@justjay.duckdns.org'
alias odin='ssh root@ec2-52-4-177-109.compute-1.amazonaws.com'
alias odinsftp='sftp root@ec2-54-84-210-229.compute-1.amazonaws.com'
alias odincode='sshfs -o allow_other,idmap=user,defer_permissions root@ec2-50-16-251-221.compute-1.amazonaws.com:"/var/www/jay/node-forms-starter" /Users/laptop/Servers/odin'
alias lyrcode='sshfs -o allow_other,idmap=user,defer_permissions root@192.168.2.78:"/" /Users/laptop/Servers/lyr'
alias lyrRemote='sshfs -p 6003 -o allow_other,idmap=user,defer_permissions root@justjay.duckdns.org:"/" /Users/laptop/Servers/lyr'


#encryption
alias encrypt='gpg -c --cipher-algo AES256 --s2k-digest-algo SHA512'

#hashes
alias sha256='shasum -a 256'

#sftp
alias sftpodin='sftp -i "jays-aws-keys.pem" ubuntu@ec2-3-84-43-113.compute-1.amazonaws.com:/root/ClubLinks'
alias sftpmac='sftp n0tj@192.168.2.11'
alias sftplyr='sftp -P 6003 root@ip.n0tj.com /'

#god
alias checkmac='macchanger -s eno1' #MAC address spoofing
alias mac='sudo macchanger -r eno1' #MAC address spoofing

#utility
alias ip='curl icanhazip.com'
alias knownhosts='cd ~/.ssh'
alias mynetwork='sudo nmap -sP "10.88.111.*"'
alias speedtest='speedtest-cliv'
alias wm='yabai --restart-service; skhd --reload'
alias yabaistop='brew services stop yabai' 
alias proxy='export HTTP_PROXY=http://127.0.0.1:8080; export HTTPS_PROXY=http://127.0.0.1:8080;'
alias unproxy='unset HTTP_PROXY; unset HTTPS_PROXY'

#modes
alias working="defaultbrowser chrome"
alias vibe="defaultbrowser safari"


#Open files in VS Code with the alias code
function code {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        local argPath="$1"
        [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
        open -a "Visual Studio Code" "$argPath"
    fi
}


function logs() {
    ssh root@ec2-50-16-251-221.compute-1.amazonaws.com 'tail -f /root/ClubLinks/app.log'
}


# Veracode
alias 'veracode'='docker run -it --rm -v $PWD:/home/luser -v ~/.veracode/credentials:/home/luser/.veracode/credentials veracode/api-wrapper-java:cmd'
alias 'veracode-pipeline-scan'='docker run -it --rm -v $PWD:/home/luser -v ~/.veracode/credentials:/home/luser/.veracode/credentials veracode/pipeline-scan:cmd'


# GCP
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jlansiquot/Desktop/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jlansiquot/Desktop/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jlansiquot/Desktop/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jlansiquot/Desktop/google-cloud-sdk/completion.zsh.inc'; fi


# Git
# This is a quick alias that fetches all upstream changes and rebases the upstream main branch into your current branch
alias 'up'='git fetch --all && git rebase origin/main'

# This basically appends any outstanding changes to the last commit without changing its commit message. I personally use this in my flow where I continually amend commit to avoid a rebase later.
alias 'append'='git commit --amend --no-edit -a'

#Push to git in 1 line
function lazygit() {
    git add .
    git commit -a -m "$1"
    git push origin master
}

function gpush(){
    docker build --platform linux/amd64 -t golfbot .
    docker tag golfbot docker.io/n0tj/golfbot:latest
    docker push docker.io/n0tj/golfbot:latest

}

alias push="git push origin HEAD" # Pushes to the current branch 
alias emptypush="git commit -m "retrigger checks" --allow-empty"
alias fix="git add . && git commit -m "fix" && git push origin HEAD"
#alias latestCommit="echo `git log -n 1 --pretty=format:"%H"`"
#alias reset="git reset --hard $latestCommit"

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Python
export PYTHONPATH="/Users/jay/Development/mathbot/cogs"
export PYTHONPATH="/Users/jay/Development/gearBot/cogs/modules"
export PATH=$(brew --prefix openvpn)/sbin:$PATH
export TERM=xterm-256color


alias ticket="/Users/laptop/Desktop/pr-automation/./autopr"


function jira(){
    cd /Users/laptop/Desktop
    ./deleteJiraIssues.sh
}




function lol(){

    open -a "/Applications/Safari.app" "https://youtube.com"
    open -n "/Applications/Notion.app"
    open -n"/Applications/Safari.app"
   # open -n ./Safari.app
   # open -a ./Notion.app
}


unsetopt PROMPT_SP

function yabai_center(){
# Set the desired window size
width=1700
height=1200

# Calculate the coordinates to center the window
# You can adjust these values based on your screen resolution and desired window size
screen_width=$(yabai -m query --displays --display | jq '.frame.w')
screen_height=$(yabai -m query --displays --display | jq '.frame.h')
x=$(echo "scale=0; ($screen_width - $width) / 2" | bc)
y=$(echo "scale=0; ($screen_height - $height) / 2" | bc)

# Resize and move the window
yabai -m window --resize abs:$width:$height
yabai -m window --move abs:$x:$y

}
