#!/usr/bin/env bash
#wait for the MySQL Server to come up
#sleep 90s

#run the setup script to create the DB and the schema in the DB
mysql -u docker -pdocker test_db < "/docker-entrypoint-initdb.d/sql001.sql"
