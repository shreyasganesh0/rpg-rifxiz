.PHONY: all run build

all: 

build: 
	@clang -std=c99 -Wall -Wextra -Wpedantic -Werror src/main.c -o bin/engine

run:
	@bin/engine

clean:
	rm bin/*
