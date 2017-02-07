SOURCES = $(shell ls *.c)
OBJECTS = $(SOURCES:.c=.o)
CFLAGS = -fPIC -I ../module
LDFLAGS = -L ../module
LDLIBS = -lmodule
TARGET = libsample.so

all: $(TARGET)

$(TARGET): $(OBJECTS)
	${CC} $(CFLAGS) -shared $(LDFLAGS) -o $@ $< $(LDLIBS)

.c.o:
	${CC} -c $(CFLAGS) $<

clean:
	rm -rf $(OBJECTS) $(TARGET)
