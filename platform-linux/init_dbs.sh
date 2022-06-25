#!/bin/bash

cd ../mongo_seed
./init.sh

cd ../sql
psql -h 127.0.0.1 -U postgres -w -f create_tables.sql
