dos2unix apertium-af-nl.nl.dix.full
echo "Processing..."
`lt-expand ../apertium-af-nl.af-nl.dix | grep -v '__REGEXP__' > /tmp/apertium-af-nl.af-nl.exp`


HEAD=`grep -nH '<section id="main"' apertium-af-nl.nl.dix.full  | cut -f2 -d':'`;
TAIL=`grep -nH '</section>' apertium-af-nl.nl.dix.full  | head -1 | tail -1 | cut -f2 -d':'`;
LENGTH=`cat apertium-af-nl.nl.dix.full | wc -l`;
DIX=nl.dix

`python trimDict.py`


echo "" > gen.xml
cat apertium-af-nl.nl.dix.full | grep '<e lm="s" r="RL">' >> gen.xml
wc -l gen.xml
cat apertium-af-nl.nl.dix.full | grep '<e lm="~" r="RL">' >> gen.xml

#####################################################################################

echo "" > $DIX
head -n $HEAD apertium-af-nl.nl.dix.full > $DIX
for i in *.xml; do 
	echo "<!-- "$i" -->" >> $DIX
	echo "" >> $DIX
	cat $i >> $DIX
done
echo "</section>" >> $DIX

T=`expr $LENGTH - $TAIL`;
tail -n $T apertium-af-nl.nl.dix.full >> $DIX;

cp nl.dix ../apertium-af-nl.nl2.dix
