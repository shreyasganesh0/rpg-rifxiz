.PHONY: all run build

TARGET=engine

all:$(TARGET)

$(TARGET): src/main.c 
	@clang -Wall -Wextra -Wpedantic -Werror src/main.c -o bin/$(TARGET)

run: bin/$(TARGET)
	@bin/engine

clean:
	rm bin/$(TARGET)
