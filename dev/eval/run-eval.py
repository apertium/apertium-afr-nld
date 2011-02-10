#!/usr/bin/python
# coding=utf-8
# -*- encoding: utf-8 -*-

import sys, codecs, copy, os, commands;

sys.stdin  = codecs.getreader('utf-8')(sys.stdin);
sys.stdout = codecs.getwriter('utf-8')(sys.stdout);
sys.stderr = codecs.getwriter('utf-8')(sys.stderr);

src = {};
tst = {};
ref = {};

tmpdir = '/tmp/'

count = 0;
for line in file(sys.argv[1]).read().split('\n'): #{
	if count == 0: #{
		row = line.split('\t');
		id = int(row[0].strip(unicode(codecs.BOM_UTF8)));
		src[id] = row[1];	
		count = count + 1;
	elif count == 1: #{
		row = line.split('\t');
		id = int(row[0]);
		tst[id] = row[1];	
		count = count + 1;
	elif count == 2: #{
		row = line.split('\t');
		id = int(row[0]);
		ref[id] = row[1];
		count = count + 1;
	#}
	print line;	
	if len(line) == 0: #{
		count = 0;
	#}	
#}

prefix = tmpdir + os.path.basename(sys.argv[1]) + '.'; 

fsrc = file(prefix + 'src', 'w+');
ftst = file(prefix + 'tst', 'w+');
fref = file(prefix + 'ref', 'w+');

if len(src) == len(tst) == len(ref): #{
	for id in src.keys(): #{
		fsrc.write(src[id] + '\n');	
		ftst.write(tst[id] + '\n');	
		fref.write(ref[id] + '\n');	
	#}
#}

fsrc.close();
ftst.close();
fref.close();

ret = commands.getstatusoutput('apertium-eval-translator-line.pl -r ' + prefix + 'ref -t ' + prefix + 'tst');
print ret[1];

commands.getstatusoutput('cat ' + prefix + 'src | apertium -d ../../ af-nl > ' + prefix + 'af-nl.tst');

ret = commands.getstatusoutput('apertium-eval-translator-line.pl -r ' + prefix + 'ref -t ' + prefix + 'af-nl.tst');
print ret[1];
