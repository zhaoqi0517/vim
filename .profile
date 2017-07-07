export XML_CATALOG_FILES="$HOME/.catalog/catalog.xml /etc/xml/catalog"

# export JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home

# export NEXUS_HOME=/usr/local/nexus

export GROOVY_HOME=/Users/tangrui/Environment/groovy-2.3.4

export HADOOP_HOME=/Users/tangrui/Environment/hadoop-2.2.0
export HADOOP_OPTS="-Djava.security.krb5.realm=OX.AC.UK -Djava.security.krb5.kdc=kdc0.ox.ac.uk:kdc1.ox.ac.uk -Djava.awt.headless=true -Djava.awt.UIElement=true"

export VERTX_HOME=/Users/tangrui/Environment/vert.x-2.1

export GRADLE_HOME=/Users/tangrui/Environment/gradle-2.2.1

export PATH=$JAVA_HOME/bin:$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$VERTX_HOME/bin:$GROOVY_HOME/bin:/Users/tangrui/Environment/fast-export:#GRADLE_HOME/bin:$PATH

# export HTTP_PROXY=localhost:7070
# export HTTPS_PROXY=$HTTP_PROXY
# export ALL_PROXY=$HTTP_PROXY

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

export VAGRANT_DEFAULT_PROVIDER=virtualbox

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Easily extract all compressed file types
extract () {
    if [ -f "$1" ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf -- "$1"    ;;
            *.tar.gz)    tar xvzf -- "$1"    ;;
            *.bz2)       bunzip2 -- "$1"     ;;
            *.rar)       unrar x -- "$1"     ;;
            *.gz)        gunzip -- "$1"      ;;
            *.tar)       tar xvf -- "$1"     ;;
            *.tbz2)      tar xvjf -- "$1"    ;;
            *.tgz)       tar xvzf -- "$1"    ;;
            *.zip)       unzip -- "$1"       ;;
            *.Z)         uncompress -- "$1"  ;;
            *.7z)        7z x -- "$1"        ;;
            *)           echo "don't know how to extract '$1'..." ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}
