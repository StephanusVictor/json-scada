#!/bin/bash

# Required tools:
# Dotnet SDK 6.0
# Golang 1.14+
# Node.js 14+

# call with argument linux-arm64 for ARM architecture

ARG1=${1:-linux-x64}

cd ..
mkdir bin
mkdir bin-wine

export GOBIN=~/json-scada/bin
go env -w GO111MODULE=auto

cd src/calculations
go get ./...
go build
cp calculations ../../bin/


cd ../cs_data_processor
npm install
cd ../cs_custom_processor
npm install
cd ../grafana_alert2event
npm install
cd ../server_realtime
npm install
cd ../server_realtime_auth
npm install
cd ../updateUser
npm install
cd ../htdocs-admin
npm install
npm run build
cd ../shell-api
npm install
cd ../alarm_beep
npm install
cd ../telegraf-listener
npm install
cd ../mqtt-sparkplug
npm install
cd ../carbone-reports
npm install
cd ../..

