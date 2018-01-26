# On branch master
# Changes not staged for commit:
#   (use "git add <file>..." to update what will be committed)
#   (use "git checkout -- <file>..." to discard changes in working directory)
#
#	modified:   build/build-all.sh
#	modified:   build/build-backup-tunnel.sh
#	modified:   build/build-pit-restore.sh
#	modified:   build/build.xml
#
BACKUP=~/mms-backup
STASH=~/stash
STASH_BACKUP=${STASH}/mms-backup

#
#	modified:   build/build-all.sh
mkdir -p ${STASH_BACKUP}/build
cp ${BACKUP}/build/build-all.sh ${STASH_BACKUP}/build/build-all.sh

#	modified:   build/build-backup-tunnel.sh
cp ${BACKUP}/build/build-backup-tunnel.sh ${STASH_BACKUP}/build/build-backup-tunnel.sh

#	modified:   build/build-pit-restore.sh
cp ${BACKUP}/build/build-pit-restore.sh ${STASH_BACKUP}/build/build-pit-restore.sh

#	modified:   build/build.xml
cp ${BACKUP}/build/build.xml ${STASH_BACKUP}/build/build.xml

