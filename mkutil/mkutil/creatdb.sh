#!/bin/bash
  
EXPECTED_ARGS=4
E_BADARGS=65
MYSQL=`which mysql`

RANDP="$(openssl rand -base64 12)"
ROOTPASS=$1
DBNAME=$2
USER=$3
PASS=$4

if [ "$#" -eq 2 ]; then
	USER=$2
	PASS=$RANDP
	EXPECTED_ARGS=2
fi


Q1="CREATE DATABASE IF NOT EXISTS $DBNAME;"
Q2="GRANT USAGE ON *.* TO $USER@localhost IDENTIFIED BY '$PASS';"
Q3="GRANT ALL PRIVILEGES ON $DBNAME.* TO $USER@localhost;"
Q4="FLUSH PRIVILEGES;"
SQL="${Q1}${Q2}${Q3}${Q4}"
  
if [ $# -ne $EXPECTED_ARGS ]
then
  echo "Usage: $0 dbname dbuser dbpass"
  exit $E_BADARGS
fi
  
$MYSQL -vv -uroot -p$1 -e "$SQL"
echo "FINISHED"
echo "Created DB:$DBNAME with User:$USER and Password:$PASS"
