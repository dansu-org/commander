CC = clang

INC = -I./include
LNK = -lm

cmdr: build/main.o
	$(CC) $(LNK) $^ -o $@

build/%.o: src/%.c | subdirs
	$(CC) $(INC) -c $^ -o $@

.PHONY: clean subdirs

clean:
	rm -f cmdr build/*.o

subdirs:
	mkdir -p build