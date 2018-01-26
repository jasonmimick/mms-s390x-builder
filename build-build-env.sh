#!/bin/bash

#stop on first error
set -e
# setup the build environment for MMS
# to run: 
# $. ./.build-build-env.sh [init|build]

# init
# work in home directory
CURRENT_DIRECTORY=`pwd`
cd $HOME

# 1. Download/install pre-reqs
# go, git#
PLATFORM=`uname -a | cut -d' ' -f2`
echo "PLATFORM=${PLATFORM}"

#GO_ARCHIVE=go1.9.2.linux-s390x.tar.gz
#curl -OL https://dl.google.com/go/${GO_ARCHIVE}
#tar xvf $GO_ARCHIVE

#PKG_MGR=yum install -y
#PKG_MGR="zypper --non-interactive install"
PKG_MGR="apt-get install -y"

# install dependencies
sudo ${PKG_MGR} git make wget tar gcc 
#sudo ${PKG_MGR} libpcap libpcap-dev 
sudo ${PKG_MGR} libpcap-dev 
#sudo ${PKG_MGR} openssl openssl-devel 
sudo ${PKG_MGR} libssl-dev 
#sudo ${PKG_MGR} which acl zlib-devel 
sudo ${PKG_MGR} acl zlib1g-dev 
sudo ${PKG_MGR} golang
#sudo ${PKG_MGR} go go-doc
#sudo ${PKG_MGR} install -y java-1.8.0-openjdk-devel.s390x
#sudo ${PKG_MGR} java-1_8_0-openjdk-devel
sudo ${PKG_MGR} openjdk-8-jdk
#sudo ${PKG_MGR} cyrus-sasl-devel
sudo ${PKG_MGR} sasl2-bin 
sodo ${PKG_MGR} libsasl2-dev
curl -OL http://mirror.jax.hugeserver.com/apache/ant/binaries/apache-ant-1.10.1-bin.tar.gz
tar xf apache-ant-1.10.1-bin.tar.gz

sudo apt-get install s3cmd
#sudo yum install s3cmd
#zypper addrepo http://s3tools.org/repo/SLE_11/s3tools.repo
#zypper install s3cmd

REPO_HOME=https://github.com/jasonmimick
git clone ${REPO_HOME}/mms-automation
git clone ${REPO_HOME}/mms-monitoring
git clone ${REPO_HOME}/mms-backup

# env vars
#!/bin/bash
export CM_ROOT=$HOME/mms-automation/go_planner
export GO_PATH=$HOMR/mms-automation/go_planner
export GOROOT=`go env GOROOT`
export ANT_HOME=$HOME/apache-ant-1.10.1/
PATH=$PATH:$GOROOT/bin:$ANT_HOME/bin

cd $CURRENT_DIRECTORY
