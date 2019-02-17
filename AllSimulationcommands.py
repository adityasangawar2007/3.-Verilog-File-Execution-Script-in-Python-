import subprocess
import os

fp = raw_input("Enter the name of your text file:  ");
subprocess.call(['vcs', fp])
subprocess.call(['./simv', fp])

for file in os.listdir("/home/011999637@SJSUAD.SJSU.EDU/Downloads/EE 271 Codes/python"):
     if file.endswith(".vcd"):
         subprocess.call(['gtkwave', file])

exit()
