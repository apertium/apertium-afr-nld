
CLEN=`cat /home/fran/corpora/afrikaans/af.crp.txt  | wc -l`;

touch /tmp/o.out /tmp/t.out

OLEN=`cat /tmp/o.out | wc -l`;
TLEN=`cat /tmp/t.out | wc -l`;

if [[ $OLEN != $CLEN ]]; then
	cat /home/fran/corpora/afrikaans/af.crp.txt | python /home/fran/scripts/numlines/numlines.py  > /tmp/o.out
fi

if [[ $TLEN != $CLEN ]]; then 
	cat /home/fran/corpora/afrikaans/af.crp.txt | python /home/fran/scripts/numlines/numlines.py | sed 's/\t/\t../g' | apertium -d ../ af-nl | sed 's/\t\.\./\t/1' > /tmp/t.out
fi


NOUNK=`cat /tmp/t.out | grep -v '*' | wc -l`;
CLEAN=`cat /tmp/t.out | grep -v -e '@[a-zäëïöüáéíóúàèìòù]' -e '#[a-zäëïöüáéíóúàèìòù]' -e '[a-zäëïöüáéíóúàèìòù]\/[a-zäëïöüáéíóúàèìòù]' | wc -l`;
NOMBIL=`cat /tmp/t.out | grep -v '@[a-zäëïöüáéíóúàèìòù]' | wc -l`;
NOMG=`cat /tmp/t.out | grep -v '#[a-zäëïöüáéíóúàèìòù]' | wc -l`;
PCLEAN=`calc $CLEAN/$CLEN*100`;

echo "Len: "$CLEN"; Clean: "$CLEAN"; No unknown: "$NOUNK"; No biling errors: "$NOMBIL"; No gen errors: "$NOMG;
echo "Percent clean: "$PCLEAN;
echo "=====================================================================================================";

paste /tmp/o.out /tmp/t.out | sed 's/$/\n/g' | sed 's/\t/\n/2' | sed 's/\t/\n/2' 
#| more
