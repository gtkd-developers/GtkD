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

$(OBJS): $(DSRC)
	${DC} ${DFLAGS} $^ -c

default: $(OBJS)
	$(CC) $^ -o $(DTARG) $(LDFLAGS)
	mv *.o ./obj

clean: 
	rm *.o ${LIB_TARG} 

small:
	rm obj/*.o *~ *.bak

lib: ${LIB_OBJS}
	$(AR) rcs $(LIB_TARG) ${LIB_OBJS}
	$(RM) $*.o

install:
	cp $(LIB_TARG) $(PATH_INSTALL)/lib
	cp $(INCL_FILES) $(PATH_INSTALL)/include  
