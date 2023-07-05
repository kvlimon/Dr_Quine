CC = clang
CFLAGS = -Werror -Wall -Wextra

EXECUTABLES = Colleen Grace Sully

SRCS = $(addsuffix .c, $(EXECUTABLES))
OBJS = $(SRCS:.c=.o)

TMP_FILES = tmp_diff Grace_kid.c $(wildcard Sully_*)

all: $(EXECUTABLES)

%.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@

$(EXECUTABLES): %: %.o
	$(CC) $< -o $@

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(EXECUTABLES) $(TMP_FILES)

re: fclean all

.PHONY: all clean fclean re