./configure --enable-tempstore=yes CFLAGS="-DSQLITE_HAS_CODEC" --disable-tcl

make

make install
