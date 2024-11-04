# Variables
CC = $(CROSS_COMPILE)gcc
CFLAGS = -Wall -Werror -g

# Default target
all: writer

# Build writer application
writer: writer.c
	$(CC) $(CFLAGS) writer.c -o writer

# Clean up
.PHONY: clean
clean:
	rm -f writer