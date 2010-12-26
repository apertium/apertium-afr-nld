echo "==Afrikaans->Dutch==============================";
sh inconsistency.sh af-nl > /tmp/af-nl.testvoc; sh inconsistency-summary.sh /tmp/af-nl.testvoc af-nl
echo ""
echo "==Dutch->Afrikaans=============================";
bash inconsistency.sh nl-af > /tmp/nl-af.testvoc; bash inconsistency-summary.sh /tmp/nl-af.testvoc nl-af
