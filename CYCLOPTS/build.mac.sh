set -x
set -e


mkdir install

if [ -f "mac.tar.gz" ]
then
    tar -xzf mac.tar.gz
fi





cd Cbc-2.8.3
ls -l
./configure --prefix=`pwd`/../install
make
make install
cd ..

cd cyclopts
cmake src/ -DCMAKE_INSTALL_PREFIX=`pwd`/../install -DCOIN_ROOT_DIR=`pwd`/../install
make 
make install 
cd ..