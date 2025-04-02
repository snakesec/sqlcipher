rm -rf /usr/local/lib/libsqlcipher.*
rm -rf /usr/local/bin/sqlcipher

./configure --with-tempstore=yes CFLAGS="-DSQLITE_HAS_CODEC -DSQLITE_EXTRA_INIT=sqlcipher_extra_init -DSQLITE_EXTRA_SHUTDOWN=sqlcipher_extra_shutdown" --disable-tcl LDFLAGS="-lcrypto -lssl"

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Configure... PASS!"
else
  # houston we have a problem
  exit 1
fi

make

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Make... PASS!"
else
  # houston we have a problem
  exit 1
fi

make install

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Make install... PASS!"
else
  # houston we have a problem
  exit 1
fi
