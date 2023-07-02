FILENAME = 'Grace_kid.py'
QUINE = "FILENAME = 'Grace_kid.py'\nQUINE = %r\nMAINPROG = lambda: (f := open(FILENAME, 'w'), f.write(QUINE %% QUINE), f.close())\n# Hide without hidding\nMAINPROG()"
MAINPROG = lambda: (f := open(FILENAME, 'w'), f.write(QUINE % QUINE), f.close())
# Hide without hidding
MAINPROG()