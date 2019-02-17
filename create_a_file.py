fp = open("/home/011999637@SJSUAD.SJSU.EDU/Downloads/firstscript.txt ",'w+')
fp.write("Internship on the cards #DoneDeal")
fp.seek(0)
print(fp.read())
fp.close()

# python ./create_a_file.py

