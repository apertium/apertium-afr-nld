TMPDIR=/tmp

if [[ $1 = "nld-afr" ]]; then

lt-expand $2 | grep -v REGEX | grep -v '<prn><enc>' | sed 's/:>:/%/g' | sed 's/:<:/%/g' | sed 's/:/%/g' | cut -f2 -d'%' |  sed 's/^/^/g' | sed 's/$/$ ^.<sent>$/g' | tee $TMPDIR/tmp_testvoc1-$1.txt |
        apertium-pretransfer|\
        lt-proc -b ../../nld-afr.autobil.bin |\
        apertium-transfer -b ../../apertium-afr-nld.nld-afr.t1x  ../../nld-afr.t1x.bin | apertium-interchunk ../../apertium-afr-nld.nld-afr.t2x  ../../nld-afr.t2x.bin | apertium-postchunk ../../apertium-afr-nld.nld-afr.t3x  ../../nld-afr.t3x.bin | tee $TMPDIR/tmp_testvoc2-$1.txt |\
        lt-proc -d ../../nld-afr.autogen.bin > $TMPDIR/tmp_testvoc3-$1.txt
paste -d _ $TMPDIR/tmp_testvoc1-$1.txt $TMPDIR/tmp_testvoc2-$1.txt $TMPDIR/tmp_testvoc3-$1.txt | sed 's/\^.<sent>\$//g' | sed 's/_/   --------->  /g' | grep -v '@'
rm $TMPDIR/tmp_testvoc1-$1.txt
rm $TMPDIR/tmp_testvoc2-$1.txt
rm $TMPDIR/tmp_testvoc3-$1.txt

elif [[ $1 = "afr-nld" ]]; then

lt-expand $2 | grep -v REGEX | grep -v '<prn><enc>' | sed 's/:>:/%/g' | sed 's/:<:/%/g' | sed 's/:/%/g' | cut -f2 -d'%' |  sed 's/^/^/g' | sed 's/$/$ ^.<sent>$/g' | tee $TMPDIR/tmp_testvoc1-$1.txt |
        apertium-pretransfer|\
        lt-proc -b ../../afr-nld.autobil.bin |\
        apertium-transfer -b ../../apertium-afr-nld.afr-nld.t1x  ../../afr-nld.t1x.bin | apertium-interchunk ../../apertium-afr-nld.afr-nld.t2x  ../../afr-nld.t2x.bin | apertium-postchunk ../../apertium-afr-nld.afr-nld.t3x  ../../afr-nld.t3x.bin | tee $TMPDIR/tmp_testvoc2-$1.txt |\
        lt-proc -d ../../afr-nld.autogen.bin > $TMPDIR/tmp_testvoc3-$1.txt
paste -d _ $TMPDIR/tmp_testvoc1-$1.txt $TMPDIR/tmp_testvoc2-$1.txt $TMPDIR/tmp_testvoc3-$1.txt | sed 's/\^.<sent>\$//g' | sed 's/_/   --------->  /g' | grep -v '@'
rm $TMPDIR/tmp_testvoc1-$1.txt
rm $TMPDIR/tmp_testvoc2-$1.txt
rm $TMPDIR/tmp_testvoc3-$1.txt

else
	echo "sh inconsistency.sh <direction>";
fi
