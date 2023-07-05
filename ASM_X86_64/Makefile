NASM = nasm
NASM_FLAGS = -f elf64

CC = clang
CFLAGS = -Werror -Wall -Wextra -fstack-protector-strong

EXECUTABLES = Colleen Grace Sully

SRCS = $(addsuffix .s, $(EXECUTABLES))
OBJS = $(SRCS:.s=.o)

TMP_FILES = tmp_diff Grace_kid.s $(wildcard Sully_*)

all: $(EXECUTABLES)

%.o: %.s
	$(NASM) $(NASM_FLAGS) $< -o $@

$(EXECUTABLES): %: %.o
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(EXECUTABLES) $(TMP_FILES)

re: fclean all

.PHONY: all clean fclean re