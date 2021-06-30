#!/bin/bash

FILE_NAME=`date +"%d-%m-%yT%H-%M-%S_$1"`

DB_BACKUP_PATH="${HOME}/backup/sql"

SQL_HOST="localhost"
SQL_PORT="27017"

mkdir -p ${DB_BACKUP_PATH}/${FILE_NAME}

SQL_USER="root"
SQL_PASSWORD="root"

# Set If Auth On your DB
AUTH_PARAM="-u ${SQL_USER} -p${SQL_PASSWORD}"

echo
echo
echo "=============================================================================================================================================="
echo "Backing up MySQL database: $1"
echo "=============================================================================================================================================="
echo
echo

mysqldump ${AUTH_PARAM} $1 > ${DB_BACKUP_PATH}/${FILE_NAME}/$1.sql

# If you want to zip backup file
# cd $DB_BACKUP_PATH
# tar -zcvf ${FILE_NAME}.tgz $FILE_NAME
# rm -r $FILE_NAME

echo
echo
echo "=============================================================================================================================================="
echo "Backing up MySQL database: $1 Completed"
echo "=============================================================================================================================================="
echo
echo