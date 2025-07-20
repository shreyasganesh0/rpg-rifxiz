.PHONY: all run build

TARGET=engine

all:$(TARGET)

$(TARGET): src/main.c 
	@clang -std=c99 -Wall -Wextra -Wpedantic -Werror src/main.c -o bin/$(TARGET)

run:
	@bin/engine

clean:
	rm bin/$(TARGET)
