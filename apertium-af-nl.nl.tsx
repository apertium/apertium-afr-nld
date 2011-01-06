<?xml version="1.0" encoding="UTF-8"?>
<tagger name ="Dutch">
	<tagset>
		<def-label name ="EVERYTHING">
			<tags-item tags="*"/>
		</def-label>
		<def-label name ="VANADV">
			<tags-item lemma="van" tags="adv"/>
		</def-label>
		<def-label name ="TEPREADV">
			<tags-item lemma="te" tags="preadv"/>
		</def-label>
		<def-label name ="DE">
			<tags-item lemma="de" tags="det.def.mf.sg"/>
			<tags-item lemma="de" tags="det.def.mfn.pl"/>
		</def-label>
		<def-label name ="HET">
			<tags-item lemma="de" tags="det.def.nt.sg"/>
		</def-label>
		<def-label name ="NOUN">
			<tags-item tags="n.*"/>
		</def-label>
		<def-label name ="NOUNPL">
			<tags-item tags="n.*.pl.*"/>
			<tags-item tags="n.*.pl"/>
		</def-label>
		<def-label name ="NOUNM">
			<tags-item tags="n.m.*"/>
		</def-label>
		<def-label name ="NOUNF">
			<tags-item tags="n.f.*"/>
		</def-label>
		<def-label name ="NOUNMF">
			<tags-item tags="n.mf.*"/>
		</def-label>
		<def-label name ="NOUNNT">
			<tags-item tags="n.nt.*"/>
		</def-label>
		<def-label name ="NOUNACR">
			<tags-item tags="n.acr.*"/>
		</def-label>
		<def-label name ="ADJPRED">
			<tags-item tags="adj.pred"/>
			<tags-item tags="adj.sint.pred"/>
			<tags-item tags="adj.sint.comp.pred"/>
			<tags-item tags="adj.sint.sup.pred"/>
		</def-label>
		<def-label name ="ADJATTR">
			<tags-item tags="adj.attr"/>
			<tags-item tags="adj.sint.attr"/>
			<tags-item tags="adj.sint.comp.attr"/>
			<tags-item tags="adj.sint.sup.attr"/>
		</def-label>
		<def-label name ="ADJPART">
			<tags-item tags="adj.part"/>
			<tags-item tags="adj.sint.part"/>
		</def-label>
		<def-label name ="ADJ">
			<tags-item tags="adj.pred"/>
			<tags-item tags="adj.attr"/>
			<tags-item tags="adj.part"/>
		</def-label>
		<def-label name ="ADJSINTPRED">
			<tags-item tags="adj.sint.pred"/>
			<tags-item tags="adj.sint.comp.pred"/>
			<tags-item tags="adj.sint.sup.pred"/>
		</def-label>
		<def-label name ="ADJSINTATTR">
			<tags-item tags="adj.sint.attr"/>
			<tags-item tags="adj.sint.comp.attr"/>
			<tags-item tags="adj.sint.sup.attr"/>
		</def-label>
		<def-label name ="ADJSINT">
			<tags-item tags="adj.sint.*"/>
		</def-label>
		<def-label name ="ADV">
			<tags-item tags="adv.*"/>
			<tags-item tags="adv"/>
		</def-label>
		<def-label name ="VBLEXIMP">
			<tags-item tags="vblex.imp.*"/>
			<tags-item tags="vblex.sep.imp.*"/>
		</def-label>
		<def-label name ="VBLEXINF">
			<tags-item tags="vblex.inf"/>
			<tags-item tags="vblex.sep.inf"/>
		</def-label>
		<def-label name ="VBLEX">
			<tags-item tags="vblex.past.*"/>
			<tags-item tags="vblex.pres.*"/>
			<tags-item tags="vblex.prs.*"/>
			<tags-item tags="vblex.pprs"/>
			<tags-item tags="vblex.pp"/>
		</def-label>
		<def-label name ="VERB">
			<tags-item tags="vblex.*"/>
			<tags-item tags="vbaux.*"/>
			<tags-item tags="vbmod.*"/>
			<tags-item tags="vbser.*"/>
			<tags-item tags="vbhaver.*"/>
		</def-label>
		<def-label name ="VERBP1">
			<tags-item tags="vblex.*.p1.*"/>
			<tags-item tags="vbaux.*.p1.*"/>
			<tags-item tags="vbmod.*.p1.*"/>
			<tags-item tags="vbser.*.p1.*"/>
			<tags-item tags="vbhaver.*.p1.*"/>
		</def-label>
		<def-label name ="VERBP2">
			<tags-item tags="vblex.*.p2.*"/>
			<tags-item tags="vbaux.*.p2.*"/>
			<tags-item tags="vbmod.*.p2.*"/>
			<tags-item tags="vbser.*.p2.*"/>
			<tags-item tags="vbhaver.*.p2.*"/>
		</def-label>
		<def-label name ="VERBP3">
			<tags-item tags="vblex.*.p3.*"/>
			<tags-item tags="vbaux.*.p3.*"/>
			<tags-item tags="vbmod.*.p3.*"/>
			<tags-item tags="vbser.*.p3.*"/>
			<tags-item tags="vbhaver.*.p3.*"/>
		</def-label>
		<def-label name ="VAUX">
			<tags-item tags="vaux.*"/>
		</def-label>
		<def-label name ="VBMOD">
			<tags-item tags="vbmod.*"/>
		</def-label>
		<def-label name ="VBSER" closed="true">
			<tags-item tags="vbser.*"/>
		</def-label>
		<def-label name ="VBHAVER" closed="true">
			<tags-item tags="vbhaver.*"/>
		</def-label>
		<def-label name ="VBSEP">
			<tags-item tags="vblex.sep.*"/>
		</def-label>
		<def-label name ="CNJCOO" closed="true">
			<tags-item tags="cnjcoo"/>
		</def-label>
		<def-label name ="CNJSUB" closed="true">
			<tags-item tags="cnjsub"/>
		</def-label>
		<def-label name ="CNJADV" closed="true">
			<tags-item tags="cnjadv"/>
		</def-label>
		<def-label name ="PRN" closed="true">
			<tags-item tags="prn.*"/>
		</def-label>
		<def-label name="NPANT">
			<tags-item tags="np.ant.*"/>
		</def-label>
		<def-label name="NPTOP">
			<tags-item tags="np.top.*"/>
		</def-label>
		<def-label name="NPCOG">
			<tags-item tags="np.cog.*"/>
		</def-label>
		<def-label name="NPAL">
			<tags-item tags="np.al.*"/>
		</def-label>
		<def-label name="PR" closed="true">
			<tags-item tags="pr"/>
		</def-label>	
		<def-label name ="PRNSUBJP1" closed="true">
			<tags-item tags="prn.subj.p1.*"/>
		</def-label>
		<def-label name ="PRNSUBJP2" closed="true">
			<tags-item tags="prn.subj.p2.*"/>
		</def-label>
		<def-label name ="PRNSUBJP3" closed="true">
			<tags-item tags="prn.subj.p3.*"/>
		</def-label>		
		<def-label name="REL" closed="true">
			<tags-item tags="rel.*"/>
		</def-label>
		<def-label name="PREADV" closed="true">
			<tags-item tags="preadv"/>
		</def-label>
		<def-label name="IJ">
			<tags-item tags="ij"/>
		</def-label>	
		<def-label name="NUM">
			<tags-item tags="num"/>
			<tags-item tags="num.*"/>
		</def-label>	
		<def-label name="DET" closed="true">
			<tags-item tags="det.*"/>
		</def-label>
		<def-label name="DETDEF" closed="true">
			<tags-item tags="det.def.*"/>
		</def-label>
		<def-label name="DETIND" closed="true">
			<tags-item tags="det.ind.*"/>
		</def-label>
		<def-label name="PUNC" closed="true">
			<tags-item tags="apos"/>
			<tags-item tags="guio"/>
			<tags-item tags="cm"/>
			<tags-item tags="lpar"/>
			<tags-item tags="rpar"/>
		</def-label>			
		
	</tagset>
	<forbid>
		<label-sequence>
			<label-item label="PRN"/>
			<label-item label="VBLEXIMP"/>
		</label-sequence>
		<label-sequence>
			<label-item label="PRN"/>
			<label-item label="VBLEXINF"/>
		</label-sequence>
		<label-sequence>
			<label-item label="VANADV"/>
			<label-item label="DET"/>
		</label-sequence>
		<label-sequence>
			<label-item label="ADJPART"/>
			<label-item label="NOUN"/>
		</label-sequence>
		<label-sequence>
			<label-item label="TEPREADV"/>
			<label-item label="NOUN"/>
		</label-sequence>
		<label-sequence>
			<label-item label="DE"/>
			<label-item label="VERB"/>
		</label-sequence>
		<label-sequence>
			<label-item label="DETDEF"/>
			<label-item label="ADJPRED"/>
		</label-sequence>
		<label-sequence>
			<label-item label="PRNSUBJP1"/>
			<label-item label="VERBP2"/>
		</label-sequence>
		<label-sequence>
			<label-item label="PRNSUBJP1"/>
			<label-item label="VERBP3"/>
		</label-sequence>
		<label-sequence>
			<label-item label="PRNSUBJP2"/>
			<label-item label="VERBP1"/>
		</label-sequence>
		<label-sequence>
			<label-item label="PRNSUBJP2"/>
			<label-item label="VERBP3"/>
		</label-sequence>
		<label-sequence>
			<label-item label="PRNSUBJP3"/>
			<label-item label="VERBP1"/>
		</label-sequence>
		<label-sequence>
			<label-item label="PRNSUBJP3"/>
			<label-item label="VERBP2"/>
		</label-sequence>		
		<label-sequence>
			<label-item label="HET"/>
			<label-item label="NOUNPL"/>
		</label-sequence>	
	</forbid>
	

</tagger>