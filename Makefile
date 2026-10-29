OS := $(shell uname -s)
ifeq ($(OS),Darwin)
    CC = /opt/homebrew/opt/llvm/bin/clang
else ifeq ($(OS),Linux)
    CC = gcc
endif
CFLAGS = -std=c23 -Wall -Wextra -Wpedantic -g

.PHONY: all client server clean

all: build/client build/server

client: build/client

server: build/server

build/client: client/main.c | build
	$(CC) $(CFLAGS) $< -o $@

build/server: server/main.c | build
	$(CC) $(CFLAGS) $< -o $@

build:
	mkdir -p build

clean:
	rm -rf build
