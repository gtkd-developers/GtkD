VPATH =  utils
OBJS =  HTODConvert.o WrapperIF.o funct.o DefReader.o \
	    GtkWrapper.o HtmlStrip.o convparms.o GtkDClass.o
DSRC := $(OBJS:%.o=%.d)
DTARG = wrapit
CC = gcc
DC = dmd
PATH_INCLUDE = 
PATH_INSTALL = ../..

CFLAGS += $(PATH_INCLUDE) 
DFLAGS += 

LDFLAGS += -L/usr/lib -lm -lpthread -ldl -lphobos

default:$(DTARG) 

$(OBJS): $(DSRC)
	${DC} ${DFLAGS} $^ -c

$(DTARG): $(OBJS)
	$(CC) $^ -o $(DTARG) $(LDFLAGS)
	mkdir obj
	mv *.o ./obj

clean: 
	rm obj/*.o ${DTARG} 


install:
	cp $(LIB_TARG) $(PATH_INSTALL)/lib
	cp $(INCL_FILES) $(PATH_INSTALL)/include  
