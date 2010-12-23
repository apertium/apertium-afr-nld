TMPDIR=/tmp

if [[ $1 = "nl-af" ]]; then

lt-expand ../apertium-af-nl.nl.dix | grep -v 'HANG' | grep -v '<cmp>' | grep -v REGEX | grep -v '<prn><enc>' | sed 's/:>:/%/g' | grep -v ':<:' | sed 's/:/%/g' | cut -f2 -d'%' |  sed 's/^/^/g' | sed 's/$/$ ^.<sent>$/g' | tee $TMPDIR/tmp_testvoc1.txt |
        apertium-pretransfer|
        apertium-transfer ../apertium-af-nl.nl-af.t1x  ../nl-af.t1x.bin  ../nl-af.autobil.bin |
        apertium-interchunk ../apertium-af-nl.nl-af.t2x  ../nl-af.t2x.bin |
        apertium-postchunk ../apertium-af-nl.nl-af.t3x  ../nl-af.t3x.bin  | tee $TMPDIR/tmp_testvoc2.txt |
        lt-proc -d ../nl-af.autogen.bin > $TMPDIR/tmp_testvoc3.txt
paste -d _ $TMPDIR/tmp_testvoc1.txt $TMPDIR/tmp_testvoc2.txt $TMPDIR/tmp_testvoc3.txt | sed 's/\^.<sent>\$//g' | sed 's/_/   --------->  /g'

elif [[ $1 = "af-nl" ]]; then

lt-expand ../apertium-af-nl.af.dix | grep -v 'HANG' | grep -v '<cmp>' | grep -v REGEX | grep -v '<prn><enc>' | sed 's/:>:/%/g' | grep -v ':<:' | sed 's/:/%/g' | cut -f2 -d'%' |  sed 's/^/^/g' | sed 's/$/$ ^.<sent>$/g' | tee $TMPDIR/tmp_testvoc1.txt |
        apertium-pretransfer|
        apertium-transfer ../apertium-af-nl.af-nl.t1x  ../af-nl.t1x.bin  ../af-nl.autobil.bin |
        apertium-interchunk ../apertium-af-nl.af-nl.t2x  ../af-nl.t2x.bin |
        apertium-postchunk ../apertium-af-nl.af-nl.t3x  ../af-nl.t3x.bin  | tee $TMPDIR/tmp_testvoc2.txt |
        lt-proc -d ../af-nl.autogen.bin > $TMPDIR/tmp_testvoc3.txt
paste -d _ $TMPDIR/tmp_testvoc1.txt $TMPDIR/tmp_testvoc2.txt $TMPDIR/tmp_testvoc3.txt | sed 's/\^.<sent>\$//g' | sed 's/_/   --------->  /g'


else
	echo "sh inconsistency.sh <direction>";
fi
