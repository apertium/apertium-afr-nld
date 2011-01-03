﻿<?xml version="1.0" encoding="UTF-8"?>
<tagger name ="Dutch">
	<tagset>
		<def-label name="DEURNOUN" closed="true">
			<tags-item lemma="deur" tags="n.*"/>
		</def-label> 
		<def-label name="NA" closed="true">
			<tags-item lemma="na" tags="pr"/>
		</def-label> 
		<def-label name="OMTE" closed="true">
			<tags-item lemma="om te" tags="pr"/>
		</def-label> 
		<def-label name="DEUR" closed="true">
			<tags-item lemma="deur" tags="pr"/>
		</def-label> 
		<def-label name="VIR" closed="true">
			<tags-item lemma="vir" tags="pr"/>
		</def-label> 

		<def-label name ="NOUN">
			<tags-item tags="n.*"/>
		</def-label>
		<def-label name ="NOUNSG">
			<tags-item tags="n.sg"/>
		</def-label>
		<def-label name ="ADJPRED">
			<tags-item tags="adj.pred"/>
			<tags-item tags="adj.sint.pred"/>
		</def-label>
		<def-label name ="ADJATTR">
			<tags-item tags="adj.attr"/>
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
		<def-label name ="VBLEX">
			<tags-item tags="vblex.inf"/>
			<tags-item tags="vblex.past"/>
			<tags-item tags="vblex.pres"/>
			<tags-item tags="vblex.pprs"/>
			<tags-item tags="vblex.pp"/>
		</def-label>
		<def-label name ="VBLEXPP">
			<tags-item tags="vblex.pp"/>
		</def-label>
		<def-label name ="VBLEXINF">
			<tags-item tags="vblex.inf"/>
		</def-label>
		<def-label name ="VAUX">
			<tags-item tags="vaux.*"/>
		</def-label>
		<def-label name ="VBMOD">
			<tags-item tags="vbmod.*"/>
		</def-label>
		<def-label name ="VBMODPP">
			<tags-item tags="vbmod.pp"/>
		</def-label>
		<def-label name ="VBSER" closed="true">
			<tags-item tags="vbser.*"/>
		</def-label>
		<def-label name ="VBSERPP" closed="true">
			<tags-item tags="vbser.pp"/>
		</def-label>
		<def-label name ="VBHAVER" closed="true">
			<tags-item tags="vbhaver.*"/>
		</def-label>
		<def-label name ="VBHAVERINF" closed="true">
			<tags-item tags="vbhaver.inf"/>
		</def-label>
		<def-label name ="VBSEP">
			<tags-item tags="vblex.sep.*"/>
		</def-label>
		<def-label name="PAST">
			<tags-item tags="vblex.past"/>
			<tags-item tags="vblex.sep.past"/>
			<tags-item tags="vbser.past"/>
			<tags-item tags="vbser.past.*"/>
		</def-label>
		<def-label name="VHAVEPP" closed="true">
			<tags-item tags="vbhaver.pp"/>
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
		<def-label name ="PRNSUBJ" closed="true">
			<tags-item tags="prn.subj.*"/>
		</def-label>
		<def-label name="NPANT">
			<tags-item tags="np.ant.*"/>
		</def-label>
		<def-label name="NPTOP"/>
			<tags-item tags="np.top.*"/>
		</def-label>
		<def-label name="NPCOG"/>
			<tags-item tags="np.cog.*"/>
		</def-label>
		<def-label name="NPAL">
			<tags-item tags="np.al.*"/>
		</def-label>
		<def-label name="PR"/>
			<tags-item tags="pr"/>
		</def-label>	
		<def-label name="REL"/>
			<tags-item tags="rel.*"/>
		</def-label>
		<def-label name="PREADV">
			<tags-item tags="preadv"/>
		</def-label>	
		<def-label name="IJ">
			<tags-item tags="ij"/>
		</def-label>		
		<def-label name="NUM">
			<tags-item tags="num"/>
			<tags-item tags="num.*"/>
		</def-label>
		<def-label name="PUNC">
			<tags-item tags="apos"/>
			<tags-item tags="guio"/>
			<tags-item tags="cm"/>
			<tags-item tags="lpar"/>
			<tags-item tags="rpar"/>
		</def-label>
		
		<def-label name="DET">
			<tags-item tags="det.*"/>
		</def-label>
	</tagset>

	<forbid>
		<label-sequence>
		  <label-item label="OMTE"/>
		  <label-item label="NOUNSG"/>
		</label-sequence>
	    <label-sequence>
			<label-item label="DEURNOM"/>
			<label-item label="DET"/>
		</label-sequence>
	   <label-sequence>
		  <label-item label="VHAVEPP"/>
		  <label-item label="PAST"/>
		</label-sequence>
		 <label-sequence>
		  <label-item label="VHAVEPP"/>
		  <label-item label="VBLEXINF"/>
		</label-sequence>
		<label-sequence>
		  <label-item label="PRNSUBJ"/>
		  <label-item label="VBLEXPP"/>
		</label-sequence>
		<label-sequence>
		  <label-item label="PRNSUBJ"/>
		  <label-item label="VSERPP"/>
		</label-sequence>
		<label-sequence>
		  <label-item label="PRNSUBJ"/>
		  <label-item label="VMODPP"/>
		</label-sequence> 
		<label-sequence>
			<label-item label="PRNSUBJ"/>
			<label-item label="VBLEXINF"/>
		</label-sequence> 
		<label-sequence>
		  <label-item label="PRNSUBJ"/>
		  <label-item label="VHAVEINF"/>
		</label-sequence>
	</forbid>
</tagger>