echo "==Afrikaans->Dutch==============================";
bash inconsistency.sh afr-nld ../../../apertium-afr/apertium-afr.afr.dix > /tmp/afr-nld.testvoc; bash inconsistency-summary.sh /tmp/afr-nld.testvoc afr-nld; grep ' #' /tmp/afr-nld.testvoc > ./testvoc-errors.afr-nld.txt; grep '@' /tmp/afr-nld.testvoc >> ./testvoc-errors.afr-nld.txt
echo ""
echo "==Dutch->Afrikaans=============================";
bash inconsistency.sh nld-afr ../../../apertium-nld/apertium-nld.nld.dix > /tmp/nld-afr.testvoc; bash inconsistency-summary.sh /tmp/nld-afr.testvoc nld-afr; grep ' #' /tmp/nld-afr.testvoc > ./testvoc-errors.nld-afr.txt; grep '@' /tmp/nld-afr.testvoc >> ./testvoc-errors.nld-afr.txt
