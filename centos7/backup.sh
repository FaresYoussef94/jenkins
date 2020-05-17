#/bin/bash

DATE=$(date +%H-%M-%S)
BACKUP=db-$DATE.sql

DB_HOST=$1
DB_PASSWORD=$2
DB_NAME=$3
AWS_SECRET=$4
BUCKET_NAME=$5

mysqldumb -u root -h $DB_HOST -p$DB_PASSWORD > /tmp/$BACKUP && \
export AWS_ACCESS_KEY=<aws-id>  && \
export AWS_SECRET_KEY=$AWS_SECRET && \
aws s3 cp /tmp/$BACKUP s3://$BUCKET_NAME/$BACKUP