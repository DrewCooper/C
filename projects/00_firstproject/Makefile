.PHONY: all clean debug install release uninstall

PROGRAM_NAME := firstproject

CFLAGS = -I../../include -Wall -DPROGRAM_NAME=\"$(PROGRAM_NAME)\"
LDFLAGS = -L../../lib

release: CFLAGS += -O2
release: all

debug: CFLAGS += -O0 -g -DDEBUG
debug: all

all: $(PROGRAM_NAME)


$(PROGRAM_NAME): main.o
	$(CC) -o $@ $(LDFLAGS) $^

%.o: %.c
	$(CC) -o $@ $(CFLAGS) -c $<


install: clean release
	install -m 0755 "./$(PROGRAM_NAME)" "../../bin/$(PROGRAM_NAME)"

uninstall:
	rm -f "../../bin/$(PROGRAM_NAME)"

clean:
	rm -f *.o $(PROGRAM_NAME)
