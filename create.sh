CURDIR=`pwd`
DIR=`pwd`

find -L $DIR/src $DIR/sample $DIR/include $DIR/plugin $DIR/third_party -name "*.hpp" -o -name "*.h" -o -name "*.cpp" -o -name "*.c" > cscope_my.files

cscope -bkq -i cscope_my.files  -f cscope_my.out

for i in  $DIR/src $DIR/sample $DIR/include $DIR/plugin $DIR/third_party 
do 
	cp .vimrc	$i/
done


