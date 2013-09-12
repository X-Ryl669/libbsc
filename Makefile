CXX?=g++
CC?=gcc
LD?=g++
CXXFLAGS=-g -D_FILE_OFFSET_BITS=64

SRC = EBSC.cpp
OBJ = $(SRC:.cpp=.o)  

all: lib

.cpp.o: $*.cpp $*.hpp 
	$(CXX) $(CXXFLAGS) $(INCPATH) -c $*.cpp -o $*.o

lib: $(OBJ)
	$(AR) -r libebsc.a EBSC.o

clean:
	-rm *.o
	-rm libebsc.a
