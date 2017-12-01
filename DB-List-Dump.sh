COMMIT_COUNT=0
COMMIT_LIMIT=10
for DB in `cat ListOfDatabases.txt`
do
    mysqldump -h.... -u.... -p.... --hex-blob --routines --triggers ${DB} | gzip > ${DB}.sql.gz &
    (( COMMIT_COUNT++ ))
    if [ ${COMMIT_COUNT} -eq ${COMMIT_LIMIT} ]
    then
        COMMIT_COUNT=0
        wait
    fi
done
if [ ${COMMIT_COUNT} -gt 0 ]
then
    wait
fi
