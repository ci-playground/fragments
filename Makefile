SOURCES = $(shell ls *.c)
OBJECTS = $(SOURCES:.c=.o)
CFLAGS = -fPIC -I ./module
LDFLAGS = -L ./module
LDLIBS = -lmodule
TARGET = libsample.so

all: $(TARGET)

$(TARGET): module/libmodule.a $(OBJECTS)
	${CC} $(CFLAGS) -shared $(LDFLAGS) -o $@ $(OBJECTS) $(LDLIBS)

module/libmodule.a:
	make -C ./module

.c.o:
	${CC} -c $(CFLAGS) $<

clean:
	rm -rf $(OBJECTS) $(TARGET)
	make -C ./module clean
