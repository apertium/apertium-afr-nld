dos2unix apertium-nld-fry.nld.dix.full
echo "Processing..."
`lt-expand ../apertium-nld-fry.nld-fry.dix | grep -v '__REGEXP__' > /tmp/apertium-nld-fry.nld-fry.exp`


HEAD=`grep -nH '<section id="main"' apertium-nld-fry.nld.dix.full  | cut -f2 -d':'`;
TAIL=`grep -nH '</section>' apertium-nld-fry.nld.dix.full  | head -1 | tail -1 | cut -f2 -d':'`;
LENGTH=`cat apertium-nld-fry.nld.dix.full | wc -l`;
DIX=nld.dix

`python trimDict.py`


echo "" > gen.xml
cat apertium-nld-fry.nld.dix.full | grep '<e lm="s" r="RL">' >> gen.xml
wc -l gen.xml
cat apertium-nld-fry.nld.dix.full | grep '<e lm="~" r="RL">' >> gen.xml

#####################################################################################

echo "" > $DIX
head -n $HEAD apertium-nld-fry.nld.dix.full > $DIX
for i in *.xml; do 
	echo "    <!-- SECTION: "$i" -->" >> $DIX
	echo "" >> $DIX
	cat $i >> $DIX
done
echo "</section>" >> $DIX

T=`expr $LENGTH - $TAIL`;
tail -n $T apertium-nld-fry.nld.dix.full >> $DIX;

cp nld.dix ../apertium-nld-fry.nld.dix
