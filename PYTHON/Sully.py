import os
import subprocess

X = 5
filename = os.path.basename(__file__)
QUINE = "import os\nimport subprocess\n\nX = %d\nfilename = os.path.basename(__file__)\nQUINE = %r\n\nif '_' in filename:\n    X-=1\n\nnextfile = 'Sully_{}.py'.format(X)\n\nfile = open(nextfile, 'w')\nfile.write(QUINE %% (X, QUINE))\nfile.close()\n\ncmd = ['python3', nextfile]\n\nif X > 0:\n    subprocess.run(cmd)"

if '_' in filename:
    X-=1

nextfile = 'Sully_{}.py'.format(X)

file = open(nextfile, 'w')
file.write(QUINE % (X, QUINE))
file.close()

cmd = ['python3', nextfile]

if X > 0:
    subprocess.run(cmd)