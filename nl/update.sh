dos2unix apertium-af-nl.nl.dix.full
echo "Processing..."
echo "" > n.xml
for i in `lt-expand ../apertium-af-nl.af-nl.dix | grep '<n>' |  sed 's/:>:/:/g' | sed 's/:<:/:/g'  | cut -f2 -d':' | sed 's/><.*/>/g' | sed 's/</:/g' | sed 's/>//g' | sed 's/ /_/g'`; do
	lem=`echo $i | cut -f1 -d':' | sed 's/_/ /g' | sed 's/#//'`; 
	pos=`echo $i | cut -f2 -d':'`; 
	cat apertium-af-nl.nl.dix.full | grep -e "lm=\"$lem\".*__$pos\"" -e "lm=\"$lem\".*__$pos\\_" -e "lm=\"$lem\".*<s n=\"$pos\"" >> n.xml;
done
wc -l n.xml
echo "" > vaux.xml
for i in `lt-expand ../apertium-af-nl.af-nl.dix | grep '<vaux' | cut -f2 -d':' | sed 's/><.*/>/g' | sed 's/</:/g' | sed 's/>//g' | sed 's/ /_/g'`; do 
	lem=`echo $i | cut -f1 -d':' | sed 's/_/ /g' | sed 's/#//'`; 
	pos=`echo $i | cut -f2 -d':'`; 
	cat apertium-af-nl.nl.dix.full | grep -e "lm=\"$lem\".*__$pos" -e "lm=\"$lem\".*<s n=\"$pos\"" >> vaux.xml;
done
wc -l vaux.xml
echo "" > vblex.xml
for i in `lt-expand ../apertium-af-nl.af-nl.dix | grep '<vb' | cut -f2 -d':' | sed 's/><.*/>/g' | sed 's/</:/g' | sed 's/>//g' | sed 's/ /_/g'`; do 
	lem=`echo $i | cut -f1 -d':' | sed 's/_/ /g' | sed 's/#//'`; 
	pos=`echo $i | cut -f2 -d':'`; 
	cat apertium-af-nl.nl.dix.full | grep -e "lm=\"$lem\".*__$pos" -e "lm=\"$lem\".*<s n=\"$pos\"" >> vblex.xml;
done
wc -l vblex.xml
echo "" > adj.xml
for i in `lt-expand ../apertium-af-nl.af-nl.dix | grep '<adj>' | cut -f2 -d':' | sed 's/><.*/>/g' | sed 's/</:/g' | sed 's/>//g' | sed 's/ /_/g'`; do 
	lem=`echo $i | cut -f1 -d':' | sed 's/_/ /g' | sed 's/#//'`; 
	pos=`echo $i | cut -f2 -d':'`; 
	cat apertium-af-nl.nl.dix.full | grep "lm=\"$lem\".*__$pos" >> adj.xml;
done
wc -l adj.xml
echo "" > adv.xml
for i in `lt-expand ../apertium-af-nl.af-nl.dix | grep '<adv>' | cut -f2 -d':' | sed 's/><.*/>/g' | sed 's/</:/g' | sed 's/>//g' | sed 's/ /_/g'`; do 
	lem=`echo $i | cut -f1 -d':' | sed 's/_/ /g'`; 
	pos=`echo $i | cut -f2 -d':'`; 
	cat apertium-af-nl.nl.dix.full | grep "lm=\"$lem\".*__$pos\"" >> adv.xml;
done
wc -l adv.xml
echo "" > pr.xml
for i in `lt-expand ../apertium-af-nl.af-nl.dix | grep '<pr>' | cut -f2 -d':' | sed 's/><.*/>/g' | sed 's/</:/g' | sed 's/>//g' | sed 's/ /_/g'`; do 
	lem=`echo $i | cut -f1 -d':' | sed 's/_/ /g'`; 
	pos=`echo $i | cut -f2 -d':'`; 
	cat apertium-af-nl.nl.dix.full | grep "lm=\"$lem\".*__$pos\"" >> pr.xml;
done
wc -l pr.xml
echo "" > prn.xml
for i in `lt-expand ../apertium-af-nl.af-nl.dix | grep '<prn>' |  sed 's/:>:/:/g' | sed 's/:<:/:/g'  | cut -f2 -d':' | sed 's/><.*/>/g' | sed 's/</:/g' | sed 's/>//g' | sed 's/ /_/g'`; do 
	lem=`echo $i | cut -f1 -d':' | sed 's/_/ /g'`; 
	pos=`echo $i | cut -f2 -d':'`; 
	cat apertium-af-nl.nl.dix.full | grep -e "lm=\"$lem\".*__$pos\"" -e "lm=\"$lem\".*<s n=\"$pos\"" >> prn.xml;
done
cat apertium-af-nl.nl.dix.full | grep -e "<e.*probj.*__prn" -e "<e.*prref.*__prn" -e "<e.*prsubj.*__prn" >> prn.xml;
wc -l prn.xml
echo "" > det.xml
for i in `lt-expand ../apertium-af-nl.af-nl.dix | grep '<det>' | sed 's/:>:/:/g' | sed 's/:<:/:/g' | cut -f2 -d':' | sed 's/><.*/>/g' | sed 's/</:/g' | sed 's/>//g' | sed 's/ /_/g'`; do 
	lem=`echo $i | cut -f1 -d':' | sed 's/_/ /g'`; 
	pos=`echo $i | cut -f2 -d':'`; 
	cat apertium-af-nl.nl.dix.full | grep -e "lm=\"$lem\".*__$pos\"" -e "lm=\"$lem\".*<s n=\"$pos\"" >> det.xml;
done
wc -l det.xml
echo "" > np.xml
for i in `lt-expand ../apertium-af-nl.af-nl.dix | grep '<np>' | cut -f2 -d':' | sed 's/><.*/>/g' | sed 's/</:/g' | sed 's/>//g' | sed 's/ /_/g'`; do 
	lem=`echo $i | cut -f1 -d':' | sed 's/_/ /g'`; 
	pos=`echo $i | cut -f2 -d':'`; 
	cat apertium-af-nl.nl.dix.full | grep "lm=\"$lem\".*__$pos\"" >> np.xml;
done
wc -l np.xml
echo "" > cnj.xml
for i in `lt-expand ../apertium-af-nl.af-nl.dix | grep '<cnj' | cut -f2 -d':' | sed 's/><.*/>/g' | sed 's/</:/g' | sed 's/>//g' | sed 's/ /_/g'`; do 
	lem=`echo $i | cut -f1 -d':' | sed 's/_/ /g'`; 
	pos=`echo $i | cut -f2 -d':'`; 
	cat apertium-af-nl.nl.dix.full | grep "lm=\"$lem\".*__$pos\"" >> cnj.xml;
done
wc -l cnj.xml
echo "" > num.xml
for i in `lt-expand ../apertium-af-nl.af-nl.dix | grep '<num' | cut -f2 -d':' | sed 's/><.*/>/g' | sed 's/</:/g' | sed 's/>//g' | sed 's/ /_/g'`; do 
	lem=`echo $i | cut -f1 -d':' | sed 's/_/ /g'`; 
	pos=`echo $i | cut -f2 -d':'`; 
	cat apertium-af-nl.nl.dix.full | grep "lm=\"$lem\".*__$pos\"" >> num.xml;
done
wc -l num.xml
echo "" > ij.xml
for i in `lt-expand ../apertium-af-nl.af-nl.dix | grep '<ij' | cut -f2 -d':' | sed 's/><.*/>/g' | sed 's/</:/g' | sed 's/>//g' | sed 's/ /_/g'`; do 
	lem=`echo $i | cut -f1 -d':' | sed 's/_/ /g'`; 
	pos=`echo $i | cut -f2 -d':'`; 
	cat apertium-af-nl.nl.dix.full | grep "lm=\"$lem\".*__$pos\"" >> ij.xml;
done
wc -l ij.xml


echo "" > rel.xml
for i in `lt-expand ../apertium-af-nl.af-nl.dix | grep '<rel' | cut -f2 -d':' | sed 's/><.*/>/g' | sed 's/</:/g' | sed 's/>//g' | sed 's/ /_/g'`; do 
	lem=`echo $i | cut -f1 -d':' | sed 's/_/ /g'`; 
	pos=`echo $i | cut -f2 -d':'`; 
	cat apertium-af-nl.nl.dix.full | grep "lm=\"$lem\".*__$pos\"" >> rel.xml;
done

wc -l rel.xml
echo "" > preadv.xml
for i in `lt-expand ../apertium-af-nl.af-nl.dix | grep '<preadv' | cut -f2 -d':' | sed 's/><.*/>/g' | sed 's/</:/g' | sed 's/>//g' | sed 's/ /_/g'`; do 
	lem=`echo $i | cut -f1 -d':' | sed 's/_/ /g'`; 
	pos=`echo $i | cut -f2 -d':'`; 
	cat apertium-af-nl.nl.dix.full | grep "lm=\"$lem\".*__$pos\"" >> preadv.xml;
done
wc -l preadv.xml
echo "" > predet.xml
for i in `lt-expand ../apertium-af-nl.af-nl.dix | grep '<predet' | cut -f2 -d':' | sed 's/><.*/>/g' | sed 's/</:/g' | sed 's/>//g' | sed 's/ /_/g'`; do 
	lem=`echo $i | cut -f1 -d':' | sed 's/_/ /g'`; 
	pos=`echo $i | cut -f2 -d':'`; 
	cat apertium-af-nl.nl.dix.full | grep "lm=\"$lem\".*__$pos\"" >> predet.xml;
done
wc -l predet.xml

echo "" > gen.xml
cat apertium-af-nl.nl.dix.full | grep '<e lm="s" r="RL">' >> gen.xml
wc -l gen.xml
cat apertium-af-nl.nl.dix.full | grep '<e lm="~" r="RL">' >> gen.xml

#####################################################################################

HEAD=`grep -nH '<section id="main"' apertium-af-nl.nl.dix.full  | cut -f2 -d':'`;
TAIL=`grep -nH '</section>' apertium-af-nl.nl.dix.full  | head -1 | tail -1 | cut -f2 -d':'`;
LENGTH=`cat apertium-af-nl.nl.dix.full | wc -l`;
DIX=nl.dix

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

cp nl.dix ../apertium-af-nl.nl.dix
