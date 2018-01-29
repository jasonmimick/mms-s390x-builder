#!/bin/bash

FLAVOR=$1

${HOME}/mms-automation/build/build/mongodb-mms-automation-agent \
-config ${HOME}/mms-s390x-builder/${FLAVOR}-zseries-local.config \
&> /dev/null &

${HOME}/mms-backup/build/build/mongodb-mms-backup-agent \
-c ${HOME}/mms-s390x-builder/backup-agent-${FLAVOR}-sample.config \
&> /dev/null &

${HOME}/mms-monitoring/build/build/mongodb-mms-monitoring-agent \
--conf ${HOME}/mms-s390x-builder/monitoring-agent-${FLAVOR}-sample.config \
&> /dev/null &

