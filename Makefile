CFLAGS = -Wall -std=c++11 -stdlib=libc++ -x c++
CC = g++
INCLUDE = block.h blockchain.h sha256.h
CPP = main.cpp block.cpp blockchain.cpp sha256.cpp
LIBS = -lm -lstdc++ 

blockchain: ${OBJ}
	${CC} ${CPP} ${CFLAGS} ${INCLUDE} -o $@ ${OBJS} ${LIBS}

clean:
	-rm -f *.o core *.core
