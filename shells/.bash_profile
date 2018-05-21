# bash
export PS1="\u \w: " 

# PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/bin

# android
export PATH=/opt/local/bin/:$PATH
export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:/Users/ym/Library/Android/sdk/platform-tools

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home
export JAVA_HOMECLASS_PATH=$JAVA_HOME/lib
export PATH=.$PATH:$JAVA_HOME/bin
export M2_HOME=/opt/java/sdk/apache-maven
export PATH=$PATH:$M2_HOME/bin
export TOMCAT_HOME=/opt/java/sdk/apache-tomcat
export PATH=$PATH:$TOMCAT_HOME/bin
export PATH=$PATH:/opt/java/gradle/gradle-bin/bin

# export PATH=~/.config/yarn/global/node_modules/.bin
# export PATH=$PATH:$HOME/.yarn/bin

export GOROOT=/usr/local/go
export GOPATH=/go
export PATH=$PATH:$GOPATH/bin
export FZF_DEFAULT_OPTS='--height 40% --reverse --border'

#查看所有alias
alias alias-all='cat ~/.bash_profile | grep "alias "'
alias .test='echo test'

# zsh
alias .chsh='chsh -s /bin/zsh'
alias ohmyzsh='wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh'
alias hook='chmod -x /git/presap.git/hooks/post-receive'

# golang
alias r='bash run.sh'
alias gov='govendor'

# java
alias mvn-init='mvn archetype:generate -DarchetypeCatalog=internal'
alias mvn-install='mvn clean install'


# save-仅仅为了记录命令
alias ...du='du -sh ' #查看文件夹大小
alias ...tar='tar -cvf' #压缩tar
alias ...tar-un='tar -xvf' #解压tar
alias ...tar='tar -czf' #压缩tar
alias ...tar-un='tar -xzvf' #解压tar

#shell
alias oas='open -a Simulator'
alias .now='cd /opt/exp'
alias .zsh='vim ~/.zshrc'
alias .bash='vim ~/.bash_profile'
alias .key='vim ~/pillarkeys'
alias .o='cd /opt'
alias .d='cd ~/Desktop/'
alias .c='cd ~/Documents/'
alias .yun='cd /Volumes/data/百度云同步盘/'
alias .git='cd ~/Documents/GitHub'
alias .gitlab='cd /gitlab/data/git-data/repositories/'
alias ls='ls -p'
alias .vim='vim ~/.vimrc'
alias v='vim'
alias vn='vim -u NONE -N'
alias .key='vim ~/pillarkeys'
alias so='source ~/.bash_profile'
alias show='defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
alias unshow='defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder'

#touch
alias touch-git='touch .gitignore'
alias sudo-root='sudo su -' # 用于记录这个: 开启root权限

alias hostnameset='hostnamectl set-hostname'
alias ssh-keygen='ssh-keygen'
alias catssh='cat ~/.ssh/id_rsa.pub'

#google
alias ssh-gl='ssh 35.197.72.129'
alias scp-gl='scp ~/.bash_profile ym@35.197.72.129:~/'

# bindo 垃圾桶
alias ssh-bindo='ssh ci@192.168.192.78' #password: bindo000
alias sshl-bindo='echo 3132连接到120.79.150.132:27017 && ssh -L 3132:localhost:27017 -i ~/.ssh/id_rsa root@120.79.150.132'
alias sshkey-bindo='rm -rf ~/.ssh/known_hosts && ssh-copy-id -i ~/.ssh/id_rsa.pub ci@192.168.192.78'
alias scp-bindo='scp ~/.bash_profile ci@192.168.192.78:~/'
alias mongo-bindo='ssh -L 27016:localhost:27017 -i ~/.ssh/id_rsa root@120.79.150.132'

#aliyun
alias ssh-al='ssh root@120.79.150.132'
alias sshl-al='echo 3132连接到120.79.150.132:27017 && ssh -L 3132:localhost:27017 -i ~/.ssh/id_rsa root@120.79.150.132'
alias sshkey-al='rm -rf ~/.ssh/known_hosts && ssh-copy-id -i ~/.ssh/id_rsa.pub root@120.79.150.132'
alias scp-al='scp ~/.bash_profile root@120.79.150.132:~/'
alias mongo-al='ssh -L 27016:localhost:27017 -i ~/.ssh/id_rsa root@120.79.150.132'

#aliyun2
alias ssh-al2='ssh root@47.92.65.173'
alias sshkey-al2='rm -rf ~/.ssh/known_hosts && ssh-copy-id -i ~/.ssh/id_rsa.pub root@47.92.65.173'
alias scp-al2='scp ~/.bash_profile root@47.92.65.173:~/'

alias ssh-ccos='ssh root@47.104.95.22'
# password: Jwm123456
alias sshkey-ccos='rm -rf ~/.ssh/known_hosts && ssh-copy-id -i ~/.ssh/id_rsa.pub root@47.104.95.22'
alias scpbash-ccos='scp ~/.bash_profile ~/.bashFunc ~/.vimrc ~/.gitconfig root@47.104.95.22:~/'

# git

# 删除当前目录的 .DS_store
alias rm.ds="find . -name '*.DS_Store' -type f -delete"  
alias look='cat /etc/issue && cat /proc/version && dmidecode -t 4 && dmidecode -t 16'
alias cat-proc-version='cat /proc/version'
alias zsh-git='open ~/.oh-my-zsh/plugins/git/git.plugin.zsh' # 查看 zsh-git插件
alias ga='git add . && git commit -m'
alias gca='git commit -am'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gcd='git checkout develop'
alias gcm='git checkout master'
alias gnew..='rm -rf .git && mv new../.git .git && rm -rf new..'
alias gco='git checkout --orphan' # 创建一个orphan的分支，这个分支是独立的
alias gll='gil pull --allow-unrelated-histories' # 强制拉取
alias gba='git branch -a' # 显示所有
alias gbr='git branch -r' # 只显示远程
alias gb='git branch' # 创建分支
alias gbm='git branch -m' # 重命名
alias gbd='git branch -D' # 删除
alias gl='git pull' # 拉取
alias gp='git push' # 提交
alias gr='git remote'
alias gm='git merge'
alias grf='git reflog' # 查看提交历史
# https://blog.csdn.net/zhaoguanghui2012/article/details/75127446
alias git-remote-prune-origin='git remote prune origin' # 清除远程已经没有的分支
alias gacp="git add . && git commit -m 'quick push' && git push" # 快速提交

alias gss='git add . && git stash save -a' # 保存当前的状态stash，并且回到当前分支上次提交状态
alias gsl='git stash list' # 查看 stash 列表
alias gsa='git stash apply' # 回到第n个(默认0，即上一个) stash
alias gsp='git stash pop' # 回到第n个(默认0，即上一个) stash，并且删除该stash
alias gsd='git stash drop' # 删除某个 stash

alias gff="git add . && git commit -m 'finish a feature' && git checkout develop && git branch -D "
alias gf='git flow'
alias gfif='git flow init -f' # 把当前项目初始化为git flow
alias gffs='git flow feature start' # 开始某一个 feature
alias gfff='git flow feature finish' # 结束某一个 feature
alias gffp='git flow feature publish' # 公开提交某一个 feature
alias gffl='git flow feature pull' # 拉取某一个 feature
alias gfft='git flow feature track'

alias gfrs='git flow release start'
alias gfrf='git flow release finish'
alias gfrp='git flow release publish'
alias gfrl='git flow release pull'
alias gfrt='git flow release track'

alias gfhs='git flow hotfix start'
alias gfhf='git flow hotfix finish'
alias gfhp='git flow hotfix publish'
alias gfhl='git flow hotfix pull'
alias gfht='git flow hotfix track'

# alias gba='git branch -a'
# alias gb='git branch'
# alias gl='git pull'
# alias gc='git checkout'

#pm2
alias pm='pm2'
alias pmm='pm2 monit'
alias pms='pm2 start'
alias pmr='pm2 restart'
alias pmd='pm2 delete'
alias pml='pm2 log'

#docker
alias d='docker'
alias dimg='docker images'
alias dc='docker container'
alias dps='docker container ls -a'
alias dcm='docker commit'
alias dcs='docker container stop'
alias drs='docker restart'
alias drm='docker container rm'
alias drm-all='docker container rm $(docker container ls -a -q)'
alias dimg='docker image ls'
alias d-node='docker run --link=mongodb -it -p 4000-4999:4000-4999 -v /opt:/opt -v /root:/root -v /git:/git --name node -d node /bin/bash'
alias d-centos='docker run -it  -p 80:8700 -v /opt:/opt -v /root:/root -v /git:/git   --name centos -d centos:7.2.1511 /bin/bash'
alias d-mongo-go='docker run -p 127.0.0.1:27017:27017 --name mongo --link go:go  -v /data/mongo:/data/db -d mongo'
alias d-mongo='docker run -p 127.0.0.1:27017:27017 --name mongo  -v /data/mongo:/data/db -d mongo'
alias d-go1='docker run -it -p 80:7000 -p 7001-7099:7001-7099 -v /opt:/opt -v /Users/ym:/root  --name go -d golang /bin/bash'
alias d-go='docker run -it -p 80:7000 -p 7001-7099:7001-7099 -v /opt:/opt -v /root:/root -v /git:/git --name go -d golang /bin/bash'
alias d-java='docker run -it -p 80:8000 -p 8000-8999:8000-8999 -v /opt:/opt -v /root:/root -v /git:/git --name java -d java /bin/bash'
alias d-jenkins='docker run -it -p 4008:8080 -p 4009:50000 -v jenkins_home:/var/jenkins_home -v /git:/git --name jenkins -d jenkins/jenkins:lts /bin/bash'
alias d-mysql="docker run -p 127.0.0.1:3306:3306  -v /opt/mysql:/var/lib/mysql  --name mysql -e MYSQL_ROOT_PASSWORD=111Asd -d mysql"
alias d-redis="docker run -v /data/redis/usr:/usr/local/etc/redis -v /data/redis/data:/data -p 6379:6379 --name redis -d redis redis-server --appendonly yes"
alias d-redis-noaof="docker run -v /data/redis:/data -p 6379:6379 --name redis -d redis redis-server"
alias d-gitlab="sudo docker run --detach \
    --hostname 120.79.150.132 \
    --publish 443:443 --publish 80:80 --publish 72:22 \
    --name gitlab \
    --restart always \
    --volume /gitlab/config:/etc/gitlab \
    --volume /gitlab/logs:/var/log/gitlab \
    --volume /gitlab/data:/var/opt/gitlab \
    gitlab/gitlab-ce:latest"

alias d-gitlab-mac="sudo docker run --detach \
    --hostname 120.79.150.132 \
    --publish 443:443 --publish 71:80 --publish 72:22 \
    --name gitlab \
    --restart always \
    --volume ~/gitlab/config:/etc/gitlab \
    --volume ~/gitlab/logs:/var/log/gitlab \
    --volume ~/gitlab/data:/var/opt/gitlab \
    gitlab/gitlab-ce:latest"

alias dnode='docker start -i node'
alias dgo='docker start -i go'
alias de='docker exec -it'
alias djava='docker start -i java'
alias dmongo='docker exec -it mongo mongo admin'
alias psel='ps -ef | grep command'
alias ps='ps -aux|grep'
alias s='screen'
alias ss='screen -S'
alias sr='screen -r'
alias sl='screen -ls'
alias sk='screen kill'
alias bs='browser-sync start --server --files "*.css, *.html, *.js, s**/*.css, **/*.html, **/*.js"'
alias bsp='browser-sync start --files "*.css, *.html, *.js, s**/*.css, **/*.html, **/*.js" --proxy "127.0.0.1:5000"'


#meteor
alias me='meteor'
alias mec='meteor create --bare'
alias meb='meteor build --directory ./dist --server '
alias meb3000='meteor build --directory ./dist --server 127.0.0.1:3000'
alias mece='meteor create --example'
alias mem='meteor mongo'
alias melist='meteor create --list'
alias mei='me npm i --save '
alias meid='me npm i --save-dev '
alias mereact='git clone https://github.com/meteor/simple-todos-react'
alias me-a-react='meteor npm i --save react react-dom prop-types babel-runtime classnames  react-router-dom react-motion mobx mobx-react ramda lodash bcrypt @types/lodash && meteor add react-meteor-data session accounts-base accounts-password service-configuration fourseven:scss random'
alias me-a-auto='meteor add autopublish insecure'
alias me-r-auto='meteor remove autopublish insecure'
alias me-a-phone='meteor add-platform android && meteor add-platform ios'
alias me-a-eslint='meteor npm i --save-dev eslint eslint-config-airbnb eslint-config-egg eslint-plugin-import eslint-plugin-jsx-a11y eslint-plugin-react'

#flutter https://flutter.io/setup-macos/
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
export PATH=~/flutter/bin:$PATH
alias fl='flutter'
alias fl-x='flutter build ios && flutter run'

#java
alias j='java'
alias jc='javac'
alias jr='javac $1.java && java $1'
alias jb='javac -d build src/*.java && cd build && java Main '


#yarn
alias npmup='sudo npm version patch && npm publish'
alias y='yarn'
alias ya='yarn add'
alias yr='yarn run'
alias ycs='yarn run clear && yarn run start'
alias yag='yarn global add'
alias yad='yarn add --dev'
alias yi='yarn install'
alias yu='yarn upgrade'
alias yrb='yarn run build'
alias yrw='yarn run web'
alias yrs='yarn run start'
alias yrd='yarn run dev'
alias yrt='yarn run test'
alias yup='sudo npm version patch && npm publish'
alias dl+='npm config set registry https://registry.npm.taobao.org && npm config set disturl https://npm.taobao.org/dist && yarn config set disturl https://npm.taobao.org/dist && yarn config set registry https://registry.npm.taobao.org'
alias dl-='yarn config delete registry && yarn config delete disturl && npm config delete registry && npm config delete disturl'
alias ydl+='yarn config set disturl https://npm.taobao.org/dist && yarn config set registry https://registry.npm.taobao.org'
alias ydl-='yarn config delete registry && yarn config delete disturl'
alias ndl+='npm config set registry https://registry.npm.taobao.org && npm config set disturl https://npm.taobao.org/dist'
alias ndl-='npm config delete registry && npm config delete disturl'
alias gdl+='git config --global http.proxy http://127.0.0.1:1087'
alias gdl-='git config --global --unset http.proxy'
alias ya-eslint='yarn global add eslint eslint-config-airbnb eslint-config-egg eslint-plugin-import eslint-plugin-jsx-a11y eslint-plugin-react'

# pandora.js 阿里node启动服务 http://www.midwayjs.org/pandora/zh-cn/quickstart.html
# pandora start --name helloApp
# pandora dev list start stop  restart list log ps exit dev
alias pd='pandora'
alias pdd='pandora-dashboard-dir'
alias pds="pandora start --name node-app 'pandora-dashboard-dir'"
alias pddo='open http://127.0.0.1:9081'
alias pd-init='pandora init ./app'

#cordova
alias cordova-pa='cordova platform add'
alias cordova-create='cordova create'
alias cordova-run='cordova run'

#react-native
alias rn='react-native'
alias rn-ios-x='react-native run-ios --simulator "iPhone X"'
alias rn-ios='react-native run-ios --simulator "iPhone 8"'
alias rn-andorid='react-native run-android'
alias cra='create-react-app'
alias crna='create-react-native-app'
alias watch-del="watchman watch-del-all"

#bin ymsave
alias node='node --harmony'
alias ymsave='node /opt/ymsave/index.js'

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

#python
alias p='python3'


# 代理方法
function p-off(){
    unset http_proxy
    unset https_proxy
    echo -e "已关闭代理"
}
function p-on() {
    # 以下注释是使用 polipo 让终端 链接8123至1086端口的代理方法
    # brew install polipo
    # ln -sfv /usr/local/opt/polipo/*.plist ~/Library/LaunchAgents
    # code /usr/local/opt/polipo/homebrew.mxcl.polipo.plist
    # 在配置文件中添加
    # <!-- <string>socksParentProxy=localhost:1086</string> -->
    # 启用代理
    launchctl load ~/Library/LaunchAgents/homebrew.mxcl.polipo.plist

    export no_proxy="localhost,127.0.0.1,localaddress,.taobao.com,.taobao.org,.baidu.org,.baidu.com,.ali.com,.ali.org,qq.com,.qq.org"
    export http_proxy=http://localhost:8123
    echo -e "已开启代理"
}

function -dkill(){
    docker container stop $1
    docker container rm $1
}
function -medis(){
    cd /Applications/medis
    npm run electron
}
function -crat(){
    create-react-app $1 --scripts-version=react-scripts-ts
}
function -osx-defaults(){
    defaults write com.apple.finder QLPanelAnimationDuration -int 0;
    defaults write com.apple.dock workspaces-swoosh-animation-off -bool YES;
    defaults write -g NSWindowResizeTime -float 0.01;
    defaults write com.apple.dock springboard-show-duration -int 0 ;
    defaults write com.apple.dock springboard-hide-duration -int 0;
    defaults write com.apple.dock expose-animation-duration -int 0;
    defaults write com.apple.Dock autohide-delay -float 0;
    defaults write com.apple.dock autohide-time-modifier -int 0;
    defaults write com.apple.finder QLEnableTextSelection -bool TRUE;
    defaults write com.apple.dock workspaces-edge-delay -float 0.15;
    defaults write com.apple.dock use-old-grid-animation -bool TRUE;
    defaults write com.apple.finder QLPanelAnimationDuration -int 0;
    defaults write -g NSAutomaticWindowAnimationsEnabled -bool FALSE;
    defaults write -g NSNavPanelExpandedStateForSaveMode -bool TRUE;
    defaults write com.apple.dock scroll-to-open -bool TRUE;
    defaults write com.apple.finder QuitMenuItem -bool TRUE;
    defaults write com.apple.finder _FXShowPosixPathInTitle -bool TRUE;
    defaults write com.apple.finder PathBarRootAtHome -bool TRUE;
    defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false;
    defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false;
    defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false;
    defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false;
    defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false;
    defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false;
    defaults write NSGlobalDomain KeyRepeat -int 1;
    defaults write NSGlobalDomain InitialKeyRepeat -int 20;
    defaults write -g ApplePressAndHoldEnabled -bool false;
    chflags nohidden ~/Library;
    killall Dock;
    killall Finder;
}
function -keyboard(){
    defaults write NSGlobalDomain KeyRepeat -int 1
    defaults write NSGlobalDomain InitialKeyRepeat -int 18
    defaults write -g ApplePressAndHoldEnabled -bool false
    defaults write -g ApplePressAndHoldEnabled -bool false;
    killall Dock;
    killall Finder;
}
function -lnsave(){
    cloud="/Users/ym/Library/Mobile Documents/com~apple~CloudDocs/lnfile"
    mkdir -p ${cloud}/${1}
    mv ${2} ${cloud}/${1}/
    ln -s ${cloud}/${1}/${2} ${2}
}
function -lnback(){
    cloud="/Users/ym/Library/Mobile Documents/com~apple~CloudDocs/lnfile"
    ln -s ${cloud}/${1}/${2} ${2}
}
function -rename(){
    # -rename *.jpg xxx.jpg yyy.jpg (把后缀为jpg的xxx.jpg改为yyy.jpg)
    for var in $1; do mv "$var" "${var%$2}$3"; done
}
function -ios(){
    # 1.首次需要安装 ios-deploy: $ sudo npm i -g ios-deploy --unsafe-perm=true
    # 2.查看SDK: $ xcodebuild -showsdks
    if [ $1 == "b" ]
    then
        xcodebuild -sdk iphoneos11.3 build
    elif [ $1 == "r" ]
    then
        ios-deploy -d -I --bundle ./build/Release-iphoneos/ProductName.app
    elif [ $1 == "br" ]
    then
        xcodebuild -sdk iphoneos11.3 build
        ios-deploy -d -I --bundle ./build/Release-iphoneos/ProductName.app
    else
        echo "情输入参数 br=编译+运行 b=编译 r=运行"
    fi
}
function -lfs(){
    git lfs install
    git lfs track "*.sketch"
    git lfs track "*.ps"
    git lfs track "*.ai"
    git lfs track "*.mp4"
    cat .gitattributes
}
function -vim-plug(){
curl -fLo curl ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

function -back(){
 cp ~/.vimrc ~/pillarkeys/shells/.vimrc
 cp ~/.bash_profile ~/pillarkeys/shells/.bash_profile
 # cp -rf ~/.vim ~/pillarkeys/shells/.vim
}
source ~/.fzf.bash
echo -e "已刷新 .bash_profile"
