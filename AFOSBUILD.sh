./configure --enable-tempstore=yes CFLAGS="-DSQLITE_HAS_CODEC" --disable-tcl

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
