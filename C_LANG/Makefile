CC = clang
CFLAGS = -Werror -Wall -Wextra

SRCS = Colleen.c Grace.c Sully.c
EXECUTABLES = Colleen Grace Sully

.PHONY: all clean fclean re

all: $(EXECUTABLES)

colleen: Colleen.c
	$(CC) $(CFLAGS) -o Colleen Colleen.c

grace: Grace.c
	$(CC) $(CFLAGS) -o Grace Grace.c

sully: Sully.c
	$(CC) $(CFLAGS) -o Sully Sully.c

clean:
	rm -f Grace_kid.c
	rm -f tmp_Colleen

fclean: clean
	rm -f $(EXECUTABLES)

re: fclean all
