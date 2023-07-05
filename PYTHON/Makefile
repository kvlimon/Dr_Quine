PYTHON = python3

QUINE_NAME = Colleen Grace Sully

SRCS = $(addsuffix .py, $(QUINE_NAME))

TMP_FILES = tmp_diff Grace_kid.py $(wildcard Sully_*)

all: $(QUINE_NAME)

$(QUINE_NAME): %: %.py
	$(PYTHON) $<

fclean:
	rm -f $(TMP_FILES)

re: fclean all

.PHONY: all clean fclean re