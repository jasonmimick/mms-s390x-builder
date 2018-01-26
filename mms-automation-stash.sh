#!/bin/bash
AUTO=~/mms-automation
STASH=~/stash
STASH_AUTO=${STASH}/mms-automation

#       modified:   build/build-all.sh
mkdir -p ${STASH_AUTO}/build
cp ${AUTO}/build/build-all.sh ${STASH_AUTO}/build/build-all.sh

#	modified:   build/build.xml
cp ${AUTO}/build/build.xml ${STASH_AUTO}/build/build.xml

#	modified:   go_planner/src/com.tengen/cm/agentversion/download.go
mkdir -p ${STASH_AUTO}/go_planner/src/com.tengen/cm/agentversion 
cp ${AUTO}/go_planner/src/com.tengen/cm/agentversion/download.go \
${STASH_AUTO}/go_planner/src/com.tengen/cm/agentversion/download.go

#	modified:   go_planner/src/com.tengen/cm/config/config.go
mkdir -p ${STASH_AUTO}/go_planner/src/com.tengen/cm/config
cp ${AUTO}/go_planner/src/com.tengen/cm/config/config.go \
${STASH_AUTO}/go_planner/src/com.tengen/cm/config/config.go

#	modified:   go_planner/src/com.tengen/cm/mversion/enterprise/enterprise.go
mkdir -p ${STASH_AUTO}/go_planner/src/com.tengen/cm/mversion/enterprise
cp ${AUTO}/go_planner/src/com.tengen/cm/mversion/enterprise/enterprise.go \
${STASH_AUTO}/go_planner/src/com.tengen/cm/mversion/enterprise/enterprise.go

#	modified:   go_planner/src/com.tengen/cm/otheragents/agents.go
mkdir -p ${STASH_AUTO}/go_planner/src/com.tengen/cm/otheragents
cp ${AUTO}/go_planner/src/com.tengen/cm/otheragents/agents.go ${STASH_AUTO}/go_planner/src/com.tengen/cm/otheragents/agents.go

#	modified:   go_planner/src/com.tengen/cm/util/os.go
mkdir -p ${STASH_AUTO}/go_planner/src/com.tengen/cm/util
cp ${AUTO}/go_planner/src/com.tengen/cm/util/os.go ${STASH_AUTO}/go_planner/src/com.tengen/cm/util/os.go


