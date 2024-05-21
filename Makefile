CC=gcc
CFLAGS=-Isrc

# Define the target executable
TARGET=main
SRCDIR=src

# Source files
SOURCES=$(SRCDIR)/main.c $(SRCDIR)/m_math/m_math.c $(SRCDIR)/utils/utils.c

# Object files
OBJECTS=$(SOURCES:.c=.o)

# Default target
all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f $(SRCDIR)/**/*.o $(SRCDIR)/*.o $(TARGET)

.PHONY: clean
