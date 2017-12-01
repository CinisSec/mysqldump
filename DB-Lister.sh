mysql -h.... -u.... -p.... -A --skip-column-names -e"SELECT DISTINCT table_schema FROM information_schema.tables WHERE table_schema NOT IN ('information_schema','mysql')" > ListOfDatabases.txt
