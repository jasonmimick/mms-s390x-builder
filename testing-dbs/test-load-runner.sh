#!/bin/bash

RS=$1
MONGO_BIN=$2
HN=`hostname -f`
${MONGO_BIN}/mongo mongodb://${HN}:27000,${HN}:27010,${HN}:27100/load?replicaSet=${RS} --eval "while (true) { db.data1.insert({'ts':new Date(),'d':Array.apply(null,Array(200)).map(x=>{ return Math.random().toString(36).substring(7,8) }).join('') }) }"



