NASM = nasm
NASM_FLAGS = -f elf64

CC = clang
CFLAGS = -Werror -Wall -Wextra -fstack-protector-strong

SRCS = Colleen.s Grace.s Sully.s
OBJS = $(SRCS:.s=.o)

EXECUTABLES = Colleen Grace Sully
TMP_FILES = tmp_diff

.PHONY: all clean fclean re

all: $(EXECUTABLES)

%.o : %.s
	$(NASM) $(NASM_FLAGS) $< -o $@

colleen: Colleen.o
	$(CC) $(CFLAGS) $< -o Colleen

grace: Grace.o
	$(CC) $(CFLAGS) $< -o Grace

sully: Sully.o
	$(CC) $(CFLAGS) $< -o Sully

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(EXECUTABLES) $(TMP_FILES)

re: fclean all
