#!/usr/bin/env bash

if [ -z "$DBNAME" ]
then
    DBNAME=sancho
fi

if [ -z "$PGPASSWORD" ]
then
    export PGPASSWORD=sancho
fi

echo "DBNAME="$DBNAME

BASIC_CMD="psql -U sancho -h localhost -c "
CMD_FILE="psql -U sancho -h localhost -f "

run() {
    echo "Executing" $1
    eval "$BASIC_CMD""$1"
}

exec_file() {
    echo "Executing file" $1
    eval "$CMD_FILE""$1"
}

sudo -u postgres dropdb --if-exists "$DBNAME"
sudo -u postgres createdb "$DBNAME"

exec_file "./table_data_types.sql"
