#!/bin/bash
CURRENT_DIRECTORY=`pwd`

export CM_ROOT=$HOME/mms-automation/go_planner
export GO_PATH=$HOME/mms-automation/go_planner
#export GOROOT=/usr/lib/golang
export GOROOT=`go env GOROOT`
export ANT_HOME=$HOME/apache-ant-1.10.1/
PATH=$PATH:$GOROOT/bin:$ANT_HOME/bin
# run build
cd $HOME/mms-automation/build
#./build-all.sh -b jason.mimick.builds -n 1 -o linux -a s390x tar.gz
./build-all.sh -b jason.mimick.builds -n 1 -o linux -a s390x tar.gz

cd $CURRENT_DIRECTORY
#tar xvf b/mongodb-mms-automation-agent-4.9.0.1-1.linux_s390x.tar.gz
