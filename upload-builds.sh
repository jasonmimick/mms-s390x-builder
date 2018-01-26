#!/bin/bash

s3cmd put ~/mms-monitoring/build/build/mongodb-mms-monitoring-agent-6.4.0.1-1.ubuntu_16.04_s390x.tar.gz s3://mms-agents-s390x/ubuntu/
s3cmd put ~/mms-automation/build/build/mongodb-mms-automation-agent-4.9.0.1-1.ubuntu_16.04_s390x.tar.gz s3://mms-agents-s390x/ubuntu/
s3cmd put ~/mms-backup/build/build/mongodb-mms-backup-agent-6.4.0.1-1.ubuntu_16.04_s390x.tar.gz s3://mms-agents-s390x/ubuntu/
