SOURCES = $(shell ls *.c)
OBJECTS = $(SOURCES:.c=.o)
TARGET = libmodule.a

all: $(TARGET)

$(TARGET): $(OBJECTS)
	${AR} r $(TARGET) $<

.c.o:
	${CC} -c $<

clean:
	rm -rf $(OBJECTS) $(TARGET)
