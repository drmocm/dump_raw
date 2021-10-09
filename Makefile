CFLAGS =  -g  -Wno-unused -Wall -Wno-format -O2  

CC = gcc

.PHONY: clean 

TARGETS = dump_raw

all: $(TARGETS)

dump_raw: dump_raw.o 
	$(CC) $(CFLAGS) -o dump_raw dump_raw.o

clean:
	for f in $(TARGETS) *.o .depend *~ ; do \
		if [ -e "$$f" ]; then \
			rm "$$f" || exit 1; \
		fi \
	done

