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
gen	 diuretics1=(strpos(gnn,"ACETAZOLAMIDE")!=0)
gen	 diuretics2=(strpos(gnn,"ALILUSEM")!=0)
gen	 diuretics3=(strpos(gnn,"ALTIZIDE")!=0)
gen	 diuretics4=(strpos(gnn,"AMILORIDE")!=0)
gen	 diuretics5=(strpos(gnn,"AMISOMETRADINE")!=0)
gen	 diuretics6=(strpos(gnn,"ANARITIDE")!=0)
gen	 diuretics7=(strpos(gnn,"AZOSEMIDE")!=0)
gen	 diuretics8=(strpos(gnn,"BEMETIZIDE")!=0)
gen	 diuretics9=(strpos(gnn,"BEMITRADINE")!=0)
gen	 diuretics10=(strpos(gnn,"BENDROFLUMETHIAZIDE")!=0)
gen	 diuretics11=(strpos(gnn,"BENZTHIAZIDE")!=0)
gen	 diuretics12=(strpos(gnn,"BENZYLHYDROCHLOROTHIAZIDE")!=0)
gen	 diuretics13=(strpos(gnn,"BESULPAMIDE")!=0)
gen	 diuretics14=(strpos(gnn,"BRISERIN")!=0)
gen	 diuretics15=(strpos(gnn,"BROCRINAT")!=0)
gen	 diuretics16=(strpos(gnn,"BUMEPAMINE")!=0)
gen	 diuretics17=(strpos(gnn,"BUMETANIDE")!=0)
gen	 diuretics18=(strpos(gnn,"BUTHIAZIDE")!=0)
gen	 diuretics19=(strpos(gnn,"BUTIZIDE")!=0)
gen	 diuretics20=(strpos(gnn,"CANRENOATE POTASSIUM")!=0)
gen	 diuretics21=(strpos(gnn,"CANRENOIC ACID")!=0)
gen	 diuretics22=(strpos(gnn,"CANRENONE")!=0)
gen	 diuretics23=(strpos(gnn,"CHLORMERODRIN")!=0)
gen	 diuretics24=(strpos(gnn,"CHLOROTHIAZIDE")!=0)
gen	 diuretics25=(strpos(gnn,"CHLORTALIDONE")!=0)
gen	 diuretics26=(strpos(gnn,"CHLORTHALIDONE")!=0)
gen	 diuretics27=(strpos(gnn,"CICLETANINE")!=0)
gen	 diuretics28=(strpos(gnn,"CLOPAMIDE")!=0)
gen	 diuretics29=(strpos(gnn,"CLOREXOLONE")!=0)
gen	 diuretics30=(strpos(gnn,"CYCLOPENTHIAZIDE")!=0)
gen	 diuretics31=(strpos(gnn,"CYCLOTHIAZIDE")!=0)
gen	 diuretics32=(strpos(gnn,"DE-O-METHYLLASIODIPLODIN")!=0)
gen	 diuretics33=(strpos(gnn,"DICLOFENAMIDE")!=0)
gen	 diuretics34=(strpos(gnn,"DROSPIRENONE")!=0)
gen	 diuretics35=(strpos(gnn,"EFONIDIPINE")!=0)
gen	 diuretics36=(strpos(gnn,"EPININE")!=0)
gen	 diuretics37=(strpos(gnn,"EPITIZIDE")!=0)
gen	 diuretics38=(strpos(gnn,"EPLERENONE")!=0)
gen	 diuretics39=(strpos(gnn,"ESAXERENONE")!=0)
gen	 diuretics40=(strpos(gnn,"ETHACRYNIC ACID")!=0)
gen	 diuretics41=(strpos(gnn,"ETHACRYNATE SODIUM")!=0)
gen	 diuretics42=(strpos(gnn,"ETHANOLAMINE O-SULFATE")!=0)
gen	 diuretics43=(strpos(gnn,"ETHIAZIDE")!=0)
gen	 diuretics44=(strpos(gnn,"ETHOXZOLAMIDE")!=0)
gen	 diuretics45=(strpos(gnn,"ETHYLISOPROPYLAMILORIDE")!=0)
gen	 diuretics46=(strpos(gnn,"ETOZOLIN")!=0)
gen	 diuretics47=(strpos(gnn,"FENQUIZONE")!=0)
gen	 diuretics48=(strpos(gnn,"FINERENONE")!=0)
gen	 diuretics49=(strpos(gnn,"FLUMETHIAZIDE")!=0)
gen	 diuretics50=(strpos(gnn,"FUROSEMIDE")!=0)
gen	 diuretics51=(strpos(gnn,"GLYCERIN")!=0)
gen	 diuretics52=(strpos(gnn,"GLYCEROL")!=0)
gen	 diuretics53=(strpos(gnn,"HYDROCHLOROTHIAZIDE")!=0)
gen	 diuretics54=(strpos(gnn,"HYDROFLUMETHIAZIDE")!=0)
gen	 diuretics55=(strpos(gnn,"IBOPAMINE")!=0)
gen	 diuretics56=(strpos(gnn,"INDACRINONE")!=0)
gen	 diuretics57=(strpos(gnn,"INDAPAMIDE")!=0)
gen	 diuretics58=(strpos(gnn,"ISOSORBIDE")!=0)
gen	 diuretics59=(strpos(gnn,"LOOP DIURETIC AGENT")!=0)
gen	 diuretics60=(strpos(gnn,"MANNITOL")!=0)
gen	 diuretics61=(strpos(gnn,"MEBUTIZIDE")!=0)
gen	 diuretics62=(strpos(gnn,"MEFRUSIDE")!=0)
gen	 diuretics63=(strpos(gnn,"MERALLURIDE")!=0)
gen	 diuretics64=(strpos(gnn,"MERCAPTOMERIN")!=0)
gen	 diuretics65=(strpos(gnn,"MERCUMATILIN")!=0)
gen	 diuretics66=(strpos(gnn,"MERETHOXYLLINE")!=0)
gen	 diuretics67=(strpos(gnn,"MERSALYL")!=0)
gen	 diuretics68=(strpos(gnn,"MESPIRENONE")!=0)
gen	 diuretics69=(strpos(gnn,"METHAZOLAMIDE")!=0)
gen	 diuretics70=(strpos(gnn,"METHYCLOTHIAZIDE")!=0)
gen	 diuretics71=(strpos(gnn,"METICRANE")!=0)
gen	 diuretics72=(strpos(gnn,"METOLAZONE")!=0)
gen	 diuretics73=(strpos(gnn,"MEXRENOATE POTASSIUM")!=0)
gen	 diuretics74=(strpos(gnn,"MEXRENOIC ACID")!=0)
gen	 diuretics75=(strpos(gnn,"MEXRENONE")!=0)
gen	 diuretics76=(strpos(gnn,"MUZOLIMINE")!=0)
gen	 diuretics77=(strpos(gnn,"NIRAVOLINE")!=0)
gen	 diuretics78=(strpos(gnn,"OSMOTIC DIURETIC AGENT")!=0)
gen	 diuretics79=(strpos(gnn,"OXPRENOATE POTASSIUM")!=0)
gen	 diuretics80=(strpos(gnn,"OZOLINONE")!=0)
gen	 diuretics81=(strpos(gnn,"PAMABROM")!=0)
gen	 diuretics82=(strpos(gnn,"PARAFLUTIZIDE")!=0)
gen	 diuretics83=(strpos(gnn,"PENFLUTIZIDE")!=0)
gen	 diuretics84=(strpos(gnn,"PERHEXILINE")!=0)
gen	 diuretics85=(strpos(gnn,"PIRETANIDE")!=0)
gen	 diuretics86=(strpos(gnn,"POLYTHIAZIDE")!=0)
gen	 diuretics87=(strpos(gnn,"POTASSIUM CITRATE")!=0)
gen	 diuretics88=(strpos(gnn,"POTASSIUM SPARING DIURETIC AGENT")!=0)
gen	 diuretics89=(strpos(gnn,"QUINETHAZONE")!=0)
gen	 diuretics90=(strpos(gnn,"RAUTRAX")!=0)
gen	 diuretics91=(strpos(gnn,"ROLOFYLLINE")!=0)
gen	 diuretics92=(strpos(gnn,"SITALIDONE")!=0)
gen	 diuretics93=(strpos(gnn,"SORBITOL")!=0)
gen	 diuretics94=(strpos(gnn,"SPIRADOLINE")!=0)
gen	 diuretics95=(strpos(gnn,"SPIRONOLACTONE")!=0)
gen	 diuretics96=(strpos(gnn,"SPIROXASONE")!=0)
gen	 diuretics97=(strpos(gnn,"TECLOTHIAZIDE")!=0)
gen	 diuretics98=(strpos(gnn,"TENSIGRADYL")!=0)
gen	 diuretics99=(strpos(gnn,"THEOBROMINE")!=0)
gen	 diuretics100=(strpos(gnn,"THEOPHYLLINE")!=0)
gen	 diuretics101=(strpos(gnn,"THIAZIDE DIURETIC AGENT")!=0)
gen	 diuretics102=(strpos(gnn,"TIAMIZIDE")!=0)
gen	 diuretics103=(strpos(gnn,"TICRYNAFEN")!=0)
gen	 diuretics104=(strpos(gnn,"TIENILIC ACID")!=0)
gen	 diuretics105=(strpos(gnn,"TIENOXOLOL")!=0)
gen	 diuretics106=(strpos(gnn,"TIFLUADOM")!=0)
gen	 diuretics107=(strpos(gnn,"TORASEMIDE")!=0)
gen	 diuretics108=(strpos(gnn,"TORRAT")!=0)
gen	 diuretics109=(strpos(gnn,"TORSEMIDE")!=0)
gen	 diuretics110=(strpos(gnn,"TRASITENSIN")!=0)
gen	 diuretics111=(strpos(gnn,"TRAXANOX")!=0)
gen	 diuretics112=(strpos(gnn,"TREPRESS")!=0)
gen	 diuretics113=(strpos(gnn,"TRIAMTERENE")!=0)
gen	 diuretics114=(strpos(gnn,"TRICHLORMETHIAZIDE")!=0)
gen	 diuretics115=(strpos(gnn,"TRINITON")!=0)
gen	 diuretics116=(strpos(gnn,"TRIPAMIDE")!=0)
gen	 diuretics117=(strpos(gnn,"TROMETAMOL")!=0)
gen	 diuretics118=(strpos(gnn,"ULARITIDE")!=0)
gen	 diuretics119=(strpos(gnn,"UREA")!=0)
gen	 diuretics120=(strpos(gnn,"VISKALDIX")!=0)
gen	 diuretics121=(strpos(gnn,"XIPAMIDE")!=0)       
		gen  diuretics_rx=( ///	
diuretics1+	///
diuretics2+	///
diuretics3+	///
diuretics4+	///
diuretics5+	///
diuretics6+	///
diuretics7+	///
diuretics8+	///
diuretics9+	///
diuretics10+	///
diuretics11+	///
diuretics12+	///
diuretics13+	///
diuretics14+	///
diuretics15+	///
diuretics16+	///
diuretics17+	///
diuretics18+	///
diuretics19+	///
diuretics20+	///
diuretics21+	///
diuretics22+	///
diuretics23+	///
diuretics24+	///
diuretics25+	///
diuretics26+	///
diuretics27+	///
diuretics28+	///
diuretics29+	///
diuretics30+	///
diuretics31+	///
diuretics32+	///
diuretics33+	///
diuretics34+	///
diuretics35+	///
diuretics36+	///
diuretics37+	///
diuretics38+	///
diuretics39+	///
diuretics40+	///
diuretics41+	///
diuretics42+	///
diuretics43+	///
diuretics44+	///
diuretics45+	///
diuretics46+	///
diuretics47+	///
diuretics48+	///
diuretics49+	///
diuretics50+	///
diuretics51+	///
diuretics52+	///
diuretics53+	///
diuretics54+	///
diuretics55+	///
diuretics56+	///
diuretics57+	///
diuretics58+	///
diuretics59+	///
diuretics60+	///
diuretics61+	///
diuretics62+	///
diuretics63+	///
diuretics64+	///
diuretics65+	///
diuretics66+	///
diuretics67+	///
diuretics68+	///
diuretics69+	///
diuretics70+	///
diuretics71+	///
diuretics72+	///
diuretics73+	///
diuretics74+	///
diuretics75+	///
diuretics76+	///
diuretics77+	///
diuretics78+	///
diuretics79+	///
diuretics80+	///
diuretics81+	///
diuretics82+	///
diuretics83+	///
diuretics84+	///
diuretics85+	///
diuretics86+	///
diuretics87+	///
diuretics88+	///
diuretics89+	///
diuretics90+	///
diuretics91+	///
diuretics92+	///
diuretics93+	///
diuretics94+	///
diuretics95+	///
diuretics96+	///
diuretics97+	///
diuretics98+	///
diuretics99+	///
diuretics100+	///
diuretics101+	///
diuretics102+	///
diuretics103+	///
diuretics104+	///
diuretics105+	///
diuretics106+	///
diuretics107+	///
diuretics108+	///
diuretics109+	///
diuretics110+	///
diuretics111+	///
diuretics112+	///
diuretics113+	///
diuretics114+	///
diuretics115+	///
diuretics116+	///
diuretics117+	///
diuretics118+	///
diuretics119+	///
diuretics120+	///
diuretics121	///
>0)
keep usrds_id srvc_dt diuretics_rx
duplicates drop 
quietly compress
save `pde`y'bc', replace
	}
}

forvalues `year' {
		 capture append using `pde`y'bc'
}
save 33_diuretics_expR.dta,replace
di "$S_TIME"
