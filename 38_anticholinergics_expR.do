di "$S_TIME"
clear
set more off
tempfile pde_2013 pde_2014 pde2013bc pde2014bc 
use usrds_id srvc_dt gnn using "/dcs01/igm/segevlab/data/usrds2015/claims/pd/pde2013",clear
save `pde_2013',replace
use usrds_id srvc_dt gnn using "/dcs01/igm/segevlab/data/usrds2016/claims/pd/pde2014",clear
save `pde_2014',replace
local year "y=2013/2014"
forvalues `year' {
  capture use `pde_`y'',clear
	if _rc==0 {
		di "processing pde_`y'.dta ..."
gen	 antich1=(strpos(gnn,"ACLIDINIUM")!=0)
gen	 antich2=(strpos(gnn,"ACOTIAMIDE")!=0)
gen	 antich3=(strpos(gnn,"ADIPHENINE")!=0)
gen	 antich4=(strpos(gnn,"AFACIFENACIN")!=0)
gen	 antich5=(strpos(gnn,"ALCURONIUM")!=0)
gen	 antich6=(strpos(gnn,"ALPHA CONOTOXIN MII")!=0)
gen	 antich7=(strpos(gnn,"ALVAMELINE")!=0)
gen	 antich8=(strpos(gnn,"ALVERINE")!=0)
gen	 antich9=(strpos(gnn,"AMANTADINE")!=0)
gen	 antich10=(strpos(gnn,"ANISODAMINE")!=0)
gen	 antich11=(strpos(gnn,"ANISOTROPINE")!=0)
gen	 antich12=(strpos(gnn,"APROFENE")!=0)
gen	 antich13=(strpos(gnn,"ASPAMINOL")!=0)
gen	 antich14=(strpos(gnn,"ATRACURIUM")!=0)
gen	 antich15=(strpos(gnn,"ATROPINE")!=0)
gen	 antich16=(strpos(gnn,"AZAPROPHEN")!=0)
gen	 antich17=(strpos(gnn,"BECLOMETHASONE DIPROPIONATE/FORMOTEROL FUMARATE/GLYCOPYRROLATE")!=0)
gen	 antich18=(strpos(gnn,"BELLADONNA ALKALOID")!=0)
gen	 antich19=(strpos(gnn,"BELLADONNA LEAF")!=0)
gen	 antich20=(strpos(gnn,"BELLADONNA/OPIUM")!=0)
gen	 antich21=(strpos(gnn,"BELLERGAL")!=0)
gen	 antich22=(strpos(gnn,"BENACTYZINE")!=0)
gen	 antich23=(strpos(gnn,"BENZETIMIDE")!=0)
gen	 antich24=(strpos(gnn,"BENZILONIUM BROMIDE")!=0)
gen	 antich25=(strpos(gnn,"BENZILYLCHOLINE MUSTARD")!=0)
gen	 antich26=(strpos(gnn,"BENZOQUINONIUM")!=0)
gen	 antich27=(strpos(gnn,"BENZTROPINE")!=0)
gen	 antich28=(strpos(gnn,"BIPERIDEN")!=0)
gen	 antich29=(strpos(gnn,"BORNAPRINE")!=0)
gen	 antich30=(strpos(gnn,"BUTYLSCOPOLAMINE")!=0)
gen	 antich31=(strpos(gnn,"BUTYLSCOPOLAMMONIUM BROMIDE")!=0)
gen	 antich32=(strpos(gnn,"BUZEPIDE")!=0)
gen	 antich33=(strpos(gnn,"CAPROCTAMINE")!=0)
gen	 antich34=(strpos(gnn,"CATESTATIN")!=0)
gen	 antich35=(strpos(gnn,"CHLORISONDAMINE")!=0)
gen	 antich36=(strpos(gnn,"CHLORPHENOXAMINE")!=0)
gen	 antich37=(strpos(gnn,"CHLORPROMAZINE")!=0)
gen	 antich38=(strpos(gnn,"CIMETROPIUM")!=0)
gen	 antich39=(strpos(gnn,"CLIDINIUM")!=0)
gen	 antich40=(strpos(gnn,"CURARE")!=0)
gen	 antich41=(strpos(gnn,"CYCLOPENTOLATE")!=0)
gen	 antich42=(strpos(gnn,"CYCRIMINE")!=0)
gen	 antich43=(strpos(gnn,"DARIFENACIN")!=0)
gen	 antich44=(strpos(gnn,"DAROTROPIUM BROMIDE")!=0)
gen	 antich45=(strpos(gnn,"DELTA-PHILANTHOTOXIN")!=0)
gen	 antich46=(strpos(gnn,"DEPTROPINE")!=0)
gen	 antich47=(strpos(gnn,"DESFESOTERODINE")!=0)
gen	 antich48=(strpos(gnn,"DESLORATADINE")!=0)
gen	 antich49=(strpos(gnn,"DEXETIMIDE")!=0)
gen	 antich50=(strpos(gnn,"DEXMECAMYLAMINE")!=0)
gen	 antich51=(strpos(gnn,"DIBUTOLINE SULFATE")!=0)
gen	 antich52=(strpos(gnn,"DICYCLOMINE")!=0)
gen	 antich53=(strpos(gnn,"DICYCLOVERINE")!=0)
gen	 antich54=(strpos(gnn,"DIETHAZINE")!=0)
gen	 antich55=(strpos(gnn,"DIMEVAMIDE")!=0)
gen	 antich56=(strpos(gnn,"DIPHEMANIL METHYLSULFATE")!=0)
gen	 antich57=(strpos(gnn,"DROFENINE")!=0)
gen	 antich58=(strpos(gnn,"ELANTRINE")!=0)
gen	 antich59=(strpos(gnn,"EMEPRONIUM")!=0)
gen	 antich60=(strpos(gnn,"ESPATROPATE")!=0)
gen	 antich61=(strpos(gnn,"ETHIDIUM")!=0)
gen	 antich62=(strpos(gnn,"ETHYLCHOLINE MUSTARD AZIRIDINIUM")!=0)
gen	 antich63=(strpos(gnn,"EUCATROPINE")!=0)
gen	 antich64=(strpos(gnn,"FENCARBAMIDE")!=0)
gen	 antich65=(strpos(gnn,"FENOVERINE")!=0)
gen	 antich66=(strpos(gnn,"FENPIPRAMIDE")!=0)
gen	 antich67=(strpos(gnn,"FENPIVERINIUM BROMIDE")!=0)
gen	 antich68=(strpos(gnn,"FESOTERODINE")!=0)
gen	 antich69=(strpos(gnn,"FLAVOXATE")!=0)
gen	 antich70=(strpos(gnn,"FLUPERLAPINE")!=0)
gen	 antich71=(strpos(gnn,"FLUTROPIUM BROMIDE")!=0)
gen	 antich72=(strpos(gnn,"FURTRAMINE")!=0)
gen	 antich73=(strpos(gnn,"GALLAMINE TRIETHIODIDE")!=0)
gen	 antich74=(strpos(gnn,"GANGLEFENE")!=0)
gen	 antich75=(strpos(gnn,"GLYCOPYRROLATE")!=0)
gen	 antich76=(strpos(gnn,"GLYCOPYRRONIUM")!=0)
gen	 antich77=(strpos(gnn,"HEMICHOLINIUM 3")!=0)
gen	 antich78=(strpos(gnn,"HEXAFLUORENIUM")!=0)
gen	 antich79=(strpos(gnn,"HEXAHYDRODIFENIDOL")!=0)
gen	 antich80=(strpos(gnn,"HEXAHYDROPROCYCLIDINE")!=0)
gen	 antich81=(strpos(gnn,"HEXAHYDROSILADIFENIDOL")!=0)
gen	 antich82=(strpos(gnn,"HEXAMETHONIUM")!=0)
gen	 antich83=(strpos(gnn,"HEXBUTINOL")!=0)
gen	 antich84=(strpos(gnn,"HEXOCYCLIUM METILSULFATE")!=0)
gen	 antich85=(strpos(gnn,"HIMBACINE")!=0)
gen	 antich86=(strpos(gnn,"HOMATROPINE")!=0)
gen	 antich87=(strpos(gnn,"HYOSCYAMINE")!=0)
gen	 antich88=(strpos(gnn,"IMIDAFENACIN")!=0)
gen	 antich89=(strpos(gnn,"INDACATEROL/GLYCOPYRROLATE")!=0)
gen	 antich90=(strpos(gnn,"IPRATROPIUM")!=0)
gen	 antich91=(strpos(gnn,"ISOMYLAMINE")!=0)
gen	 antich92=(strpos(gnn,"ISOPROPAMIDE")!=0)
gen	 antich93=(strpos(gnn,"LEVETIMIDE")!=0)
gen	 antich94=(strpos(gnn,"LITHOCHOLYLCHOLINE")!=0)
gen	 antich95=(strpos(gnn,"LOPHOTOXIN")!=0)
gen	 antich96=(strpos(gnn,"MAZATICOL")!=0)
gen	 antich97=(strpos(gnn,"MEBEVERINE")!=0)
gen	 antich98=(strpos(gnn,"MECAMYLAMINE")!=0)
gen	 antich99=(strpos(gnn,"MEFURTRAMINE")!=0)
gen	 antich100=(strpos(gnn,"MEPENZOLATE")!=0)
gen	 antich101=(strpos(gnn,"MEPTAZINOL")!=0)
gen	 antich102=(strpos(gnn,"METHANTHELINE")!=0)
gen	 antich103=(strpos(gnn,"METHOCTRAMINE")!=0)
gen	 antich104=(strpos(gnn,"METHSCOPOLAMINE")!=0)
gen	 antich105=(strpos(gnn,"METHYLATROPINE")!=0)
gen	 antich106=(strpos(gnn,"METHYLLYCACONITINE")!=0)
gen	 antich107=(strpos(gnn,"METHYLSCOPOLAMINE")!=0)
gen	 antich108=(strpos(gnn,"METIXENE")!=0)
gen	 antich109=(strpos(gnn,"MUSCARINIC M1 RECEPTOR ANTAGONIST")!=0)
gen	 antich110=(strpos(gnn,"MUSCARINIC M2 RECEPTOR ANTAGONIST")!=0)
gen	 antich111=(strpos(gnn,"MUSCARINIC M3 RECEPTOR ANTAGONIST")!=0)
gen	 antich112=(strpos(gnn,"MUSCARINIC RECEPTOR BLOCKING AGENT")!=0)
gen	 antich113=(strpos(gnn,"NICOTINE TARTRATE")!=0)
gen	 antich114=(strpos(gnn,"NICOTINIC RECEPTOR BLOCKING AGENT")!=0)
gen	 antich115=(strpos(gnn,"NUVENZEPINE")!=0)
gen	 antich116=(strpos(gnn,"OCTOTROPINE METHYLBROMIDE")!=0)
gen	 antich117=(strpos(gnn,"OCTYLONIUM")!=0)
gen	 antich118=(strpos(gnn,"ORPHENADRINE")!=0)
gen	 antich119=(strpos(gnn,"OTENZEPAD")!=0)
gen	 antich120=(strpos(gnn,"OXITROPIUM BROMIDE")!=0)
gen	 antich121=(strpos(gnn,"OXYBUTYNIN")!=0)
gen	 antich122=(strpos(gnn,"OXYPHENCYCLIMINE")!=0)
gen	 antich123=(strpos(gnn,"OXYPHENONIUM")!=0)
gen	 antich124=(strpos(gnn,"PANCURONIUM")!=0)
gen	 antich125=(strpos(gnn,"PARA FLUOROHEXAHYDROSILADIFENIDOL")!=0)
gen	 antich126=(strpos(gnn,"PARA FLUOROHEXBUTINOL")!=0)
gen	 antich127=(strpos(gnn,"PARAPENZOLATE BROMIDE")!=0)
gen	 antich128=(strpos(gnn,"PEMPIDINE")!=0)
gen	 antich129=(strpos(gnn,"PENTHIENATE")!=0)
gen	 antich130=(strpos(gnn,"PENTOLINIUM TARTRATE")!=0)
gen	 antich131=(strpos(gnn,"PHENGLUTARIMIDE")!=0)
gen	 antich132=(strpos(gnn,"PHENYLTROPE")!=0)
gen	 antich133=(strpos(gnn,"PINAVERIUM")!=0)
gen	 antich134=(strpos(gnn,"PIPECURONIUM")!=0)
gen	 antich135=(strpos(gnn,"PIPENZOLATE BROMIDE")!=0)
gen	 antich136=(strpos(gnn,"PIPERIDOLATE")!=0)
gen	 antich137=(strpos(gnn,"PIPERPHENAMINE")!=0)
gen	 antich138=(strpos(gnn,"PIPETHANATE")!=0)
gen	 antich139=(strpos(gnn,"PIRENZEPINE")!=0)
gen	 antich140=(strpos(gnn,"PIROHEPTINE")!=0)
gen	 antich141=(strpos(gnn,"POLDINE METHYLSULFATE")!=0)
gen	 antich142=(strpos(gnn,"PRIDINOL")!=0)
gen	 antich143=(strpos(gnn,"PRIFINIUM BROMIDE")!=0)
gen	 antich144=(strpos(gnn,"PROCYCLIDINE")!=0)
gen	 antich145=(strpos(gnn,"PROFENAMINE")!=0)
gen	 antich146=(strpos(gnn,"PROGLUMIDE")!=0)
gen	 antich147=(strpos(gnn,"PROPANTHELINE")!=0)
gen	 antich148=(strpos(gnn,"PROPIVERINE")!=0)
gen	 antich149=(strpos(gnn,"PROPYLBENZILYLCHOLINE MUSTARD")!=0)
gen	 antich150=(strpos(gnn,"PYRRINOL")!=0)
gen	 antich151=(strpos(gnn,"QUINIDINE")!=0)
gen	 antich152=(strpos(gnn,"QUINUCLIDINYL BENZILATE")!=0)
gen	 antich153=(strpos(gnn,"REVATROPATE")!=0)
gen	 antich154=(strpos(gnn,"REVEFENACIN")!=0)
gen	 antich155=(strpos(gnn,"REVOSIMELINE")!=0)
gen	 antich156=(strpos(gnn,"RISPENZEPINE")!=0)
gen	 antich157=(strpos(gnn,"SCOPOLAMINE")!=0)
gen	 antich158=(strpos(gnn,"SECOVERINE")!=0)
gen	 antich159=(strpos(gnn,"SILAHEXOCYCLIUM")!=0)
gen	 antich160=(strpos(gnn,"SILTENZEPINE")!=0)
gen	 antich161=(strpos(gnn,"SOFPIRONIUM BROMIDE")!=0)
gen	 antich162=(strpos(gnn,"SOLIFENACIN")!=0)
gen	 antich163=(strpos(gnn,"STRAMONIUM")!=0)
gen	 antich164=(strpos(gnn,"SYDNOFEN")!=0)
gen	 antich165=(strpos(gnn,"TARAFENACIN")!=0)
gen	 antich166=(strpos(gnn,"TELENZEPINE")!=0)
gen	 antich167=(strpos(gnn,"TEMATROPIUM")!=0)
gen	 antich168=(strpos(gnn,"TEMIVERINE")!=0)
gen	 antich169=(strpos(gnn,"THIAZINAMIUM")!=0)
gen	 antich170=(strpos(gnn,"THIHEXINOL")!=0)
gen	 antich171=(strpos(gnn,"TIEMONIUM IODIDE")!=0)
gen	 antich172=(strpos(gnn,"TIEMONIUM METHYLSULFATE")!=0)
gen	 antich173=(strpos(gnn,"TIFENAMIL")!=0)
gen	 antich174=(strpos(gnn,"TIMEPIDIUM BROMIDE")!=0)
gen	 antich175=(strpos(gnn,"TIOTROPIUM")!=0)
gen	 antich176=(strpos(gnn,"TIOTROPIUM BROMIDE")!=0)
gen	 antich177=(strpos(gnn,"TOFENACIN")!=0)
gen	 antich178=(strpos(gnn,"TOLTERODINE")!=0)
gen	 antich179=(strpos(gnn,"TONOPAN")!=0)
gen	 antich180=(strpos(gnn,"TOXIFERINE")!=0)
gen	 antich181=(strpos(gnn,"TRICYCLAMOL")!=0)
gen	 antich182=(strpos(gnn,"TRIDIHEXETHYL CHLORIDE")!=0)
gen	 antich183=(strpos(gnn,"TRIETHYLCHOLINE")!=0)
gen	 antich184=(strpos(gnn,"TRIHEXYPHENIDYL")!=0)
gen	 antich185=(strpos(gnn,"TRIMETHAPHAN")!=0)
gen	 antich186=(strpos(gnn,"TRIMETHOBENZAMIDE")!=0)
gen	 antich187=(strpos(gnn,"TRIPERIDENE")!=0)
gen	 antich188=(strpos(gnn,"TRIPITRAMINE")!=0)
gen	 antich189=(strpos(gnn,"TROPACIN")!=0)
gen	 antich190=(strpos(gnn,"TROPICAMIDE")!=0)
gen	 antich191=(strpos(gnn,"TROPINE")!=0)
gen	 antich192=(strpos(gnn,"TROSPIUM")!=0)
gen	 antich193=(strpos(gnn,"TROSPIUM CHLORIDE")!=0)
gen	 antich194=(strpos(gnn,"TROVENTOL")!=0)
gen	 antich195=(strpos(gnn,"TUBOCURARINE")!=0)
gen	 antich196=(strpos(gnn,"UMECLIDINIUM")!=0)
gen	 antich197=(strpos(gnn,"VALETHAMATE BROMIDE")!=0)
gen	 antich198=(strpos(gnn,"VAMICAMIDE")!=0)
gen	 antich199=(strpos(gnn,"VECURONIUM BROMIDE")!=0)
gen	 antich200=(strpos(gnn,"VEDACLIDINE")!=0)
gen	 antich201=(strpos(gnn,"ZAMIFENACIN")!=0)
gen	 antich202=(strpos(gnn,"ZOLENZEPINE")!=0)      
		gen  antich_rx=( ///	
antich1+	///
antich2+	///
antich3+	///
antich4+	///
antich5+	///
antich6+	///
antich7+	///
antich8+	///
antich9+	///
antich10+	///
antich11+	///
antich12+	///
antich13+	///
antich14+	///
antich15+	///
antich16+	///
antich17+	///
antich18+	///
antich19+	///
antich20+	///
antich21+	///
antich22+	///
antich23+	///
antich24+	///
antich25+	///
antich26+	///
antich27+	///
antich28+	///
antich29+	///
antich30+	///
antich31+	///
antich32+	///
antich33+	///
antich34+	///
antich35+	///
antich36+	///
antich37+	///
antich38+	///
antich39+	///
antich40+	///
antich41+	///
antich42+	///
antich43+	///
antich44+	///
antich45+	///
antich46+	///
antich47+	///
antich48+	///
antich49+	///
antich50+	///
antich51+	///
antich52+	///
antich53+	///
antich54+	///
antich55+	///
antich56+	///
antich57+	///
antich58+	///
antich59+	///
antich60+	///
antich61+	///
antich62+	///
antich63+	///
antich64+	///
antich65+	///
antich66+	///
antich67+	///
antich68+	///
antich69+	///
antich70+	///
antich71+	///
antich72+	///
antich73+	///
antich74+	///
antich75+	///
antich76+	///
antich77+	///
antich78+	///
antich79+	///
antich80+	///
antich81+	///
antich82+	///
antich83+	///
antich84+	///
antich85+	///
antich86+	///
antich87+	///
antich88+	///
antich89+	///
antich90+	///
antich91+	///
antich92+	///
antich93+	///
antich94+	///
antich95+	///
antich96+	///
antich97+	///
antich98+	///
antich99+	///
antich100+	///
antich101+	///
antich102+	///
antich103+	///
antich104+	///
antich105+	///
antich106+	///
antich107+	///
antich108+	///
antich109+	///
antich110+	///
antich111+	///
antich112+	///
antich113+	///
antich114+	///
antich115+	///
antich116+	///
antich117+	///
antich118+	///
antich119+	///
antich120+	///
antich121+	///
antich122+	///
antich123+	///
antich124+	///
antich125+	///
antich126+	///
antich127+	///
antich128+	///
antich129+	///
antich130+	///
antich131+	///
antich132+	///
antich133+	///
antich134+	///
antich135+	///
antich136+	///
antich137+	///
antich138+	///
antich139+	///
antich140+	///
antich141+	///
antich142+	///
antich143+	///
antich144+	///
antich145+	///
antich146+	///
antich147+	///
antich148+	///
antich149+	///
antich150+	///
antich151+	///
antich152+	///
antich153+	///
antich154+	///
antich155+	///
antich156+	///
antich157+	///
antich158+	///
antich159+	///
antich160+	///
antich161+	///
antich162+	///
antich163+	///
antich164+	///
antich165+	///
antich166+	///
antich167+	///
antich168+	///
antich169+	///
antich170+	///
antich171+	///
antich172+	///
antich173+	///
antich174+	///
antich175+	///
antich176+	///
antich177+	///
antich178+	///
antich179+	///
antich180+	///
antich181+	///
antich182+	///
antich183+	///
antich184+	///
antich185+	///
antich186+	///
antich187+	///
antich188+	///
antich189+	///
antich190+	///
antich191+	///
antich192+	///
antich193+	///
antich194+	///
antich195+	///
antich196+	///
antich197+	///
antich198+	///
antich199+	///
antich200+	///
antich201+	///
antich202	///
>0)
keep usrds_id srvc_dt antich_rx 
duplicates drop
compress
save `pde`y'bc', replace
	}
}

forvalues `year' {
		 capture append using `pde`y'bc'
}
save 38_anticholinergics_expR.dta,replace
di "$S_TIME"
