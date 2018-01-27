#!/bin/bash

FLAVOR=$1
MONGO_BIN=$2
CONF_DIR=`pwd`
echo "Starting 3-node replica set with FLAVOR=${FLAVOR}"
echo "Using MONGO_BIN=${MONGO_BIN}"

# check dependencies
#source ./mongodb-enterprise-${FLAVOR}-dependency-install.sh

sudo killall mongod

echo "Pausing to let mongod's shutdown"
sleep 4

sudo rm -rf /data/z-db-{1,2,3}
sudo mkdir -p /data/z-db-{1,2,3}
sudo chown linux1:linux1 /data/z-db-{1,2,3}

${MONGO_BIN}/mongod -f ${CONF_DIR}/mongod-${FLAVOR}-one.conf
${MONGO_BIN}/mongod -f ${CONF_DIR}/mongod-${FLAVOR}-two.conf
${MONGO_BIN}/mongod -f ${CONF_DIR}/mongod-${FLAVOR}-three.conf

HOSTNAME=`hostname -f`
echo "Using HOSTNAME=${HOSTNAME}"
sleep 3
${MONGO_BIN}/mongo --host ${HOSTNAME} --port 27000 --eval 'rs.initiate()'
sleep 2
${MONGO_BIN}/mongo --host ${HOSTNAME} --port 27000 --eval 'rs.add(hostname()+":27010")'
${MONGO_BIN}/mongo --host ${HOSTNAME} --port 27000 --eval 'rs.add(hostname()+":27100")'


