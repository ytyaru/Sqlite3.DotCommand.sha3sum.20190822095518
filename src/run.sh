SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

sqlite3 :memory: \
"create table users(id integer primary key, name text);" \
"insert into users(name) values('Yamada');" \
".sha3sum"

sqlite3 :memory: \
"create table users(id integer primary key, name text);" \
"insert into users(name) values('Yamada');" \
".sha3sum --sha3-512"

