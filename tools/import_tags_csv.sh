mongoimport --db=json_scada --collection=realtimeData --type=csv --headerline --fieldFile=tag_import_fields.txt --file=tags.csv
mongo --eval 'db.realtimeData.deleteMany({tag: ""});' json_scada
