mysql -h... -u... -p... -A --skip-column-names -e"SELECT CONCAT(table_schema,'.',table_name) FROM information_schema.tables WHERE table_schema NOT IN ('information_schema','mysql')" > ListOfTables.txt
