#!/bin/bash

FILE_NAME=`date +"%d-%m-%yT%H-%M-%S_$1"`

DB_BACKUP_PATH="${HOME}/backup/mongo"

MONGO_HOST="localhost"
MONGO_PORT="27017"

mkdir -p ${DB_BACKUP_PATH}/${FILE_NAME}

MONGO_USER=""
MONGO_PASSWORD=""

# Set If Auth On your DB
AUTH_PARAM=""
#AUTH_PARAM="--username=${MONGO_USER} --password=${MONGO_PASSWORD} --authenticationDatabase admin"

echo
echo
echo "=============================================================================================================================================="
echo "Backing up MongoDB database: $1"
echo "=============================================================================================================================================="
echo
echo
mongodump --host ${MONGO_HOST} --port ${MONGO_PORT} --db $1 ${AUTH_PARAM} --out ${DB_BACKUP_PATH}/${FILE_NAME}/

# If you want to zip backup file
# cd $DB_BACKUP_PATH
# tar -zcvf ${FILE_NAME}.tgz $FILE_NAME
# rm -r $FILE_NAME

echo
echo
echo "=============================================================================================================================================="
echo "Backing up MongoDB database: $1 Completed"
echo "=============================================================================================================================================="
echo
echo