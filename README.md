mms-s390x-builder
=================

This repository contains scripts and sample config to support 
building the MongoDB Ops Manager agents on the IBM zSeries platform.

Currently the agents built for the `s390x` golang platform 
have been tested aginst MongoDB Ops Manager 3.6.2 
(running on Amazon Linux) for:
* Red Hat Enterprise Linux 7.4
* SUSE 
* Ubuntu 16.04

Pre-built archives with Operating Systemn specific builds can be found
through the following links:

* [Ubuntu 16.04](https://s3.console.aws.amazon.com/s3/buckets/mms-agents-s390x/ubuntu/)
* [SUSE 12.3](https://s3.console.aws.amazon.com/s3/buckets/mms-agents-s390x/suse/)
* [Red Hat 7.4](https://s3.console.aws.amazon.com/s3/buckets/mms-agents-s390x/redhat/)

In order to compile the agents yourself, clone the following forks
of the main agent repos:
* [mms-automation](https://github.com/jasonmimick/mms-automation)
* [mms-monitoring](https://github.com/jasonmimick/mms-monitoring)
* [mms-backup](https://github.com/jasonmimick/mms-backup)

Limitations
-----------
Current versions of MongoDB Ops Manager itself do _not_ support
the `s390x` platform, therefore certain functionality when managing
MongoDB nodes on zSeries systems is limited. In particular, support
for automated deployments or importing deployments for automation
is not supported. This is due to Ops Manager's inability to send the
automation agent a list of platform specific builds of MongoDB for the
agent to download. This limitation will be removed in some future release.

Apart from the limitation described above all monitoring, alerting, and
backup functionality of MongoDB Ops Manager operate as intended.

Testing and Demo System
-----------------------

A demonstration system has been deployed and may be access at

http://ec2-34-203-218-44.compute-1.amazonaws.com:8080.

You may [Register](http://ec2-34-203-218-44.compute-1.amazonaws.com:8080/user#/ops/register/accountProfile) for new account for access.

Contact
-------

For inquiry please contact:
* Jason Mimick <jason.mimick@mongodb.com>
* Sarah Branfman <sarah@mongodb.com>

Disclosure
----------

All artifacts contained within this repository are for 
testing and demonstration purposes only. As such, they are not
officially supported software. They should _never_ be used within any
production setting. MongoDB assumes no responsibility or liability for 
it's use.
 


