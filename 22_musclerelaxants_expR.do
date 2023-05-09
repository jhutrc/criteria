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
gen	 muscle1=(strpos(gnn,"AFLOQUALONE")!=0)
gen	 muscle2=(strpos(gnn,"ALCURONIUM")!=0)
gen	 muscle3=(strpos(gnn,"AMIFAMPRIDINE")!=0)
gen	 muscle4=(strpos(gnn,"ARBACLOFEN PLACARBIL")!=0)
gen	 muscle5=(strpos(gnn,"ATRACURIUM")!=0)
gen	 muscle6=(strpos(gnn,"AZUMOLENE")!=0)
gen	 muscle7=(strpos(gnn,"BACLOFEN")!=0)
gen	 muscle8=(strpos(gnn,"BENDAZOLE")!=0)
gen	 muscle9=(strpos(gnn,"BOLDINE")!=0)
gen	 muscle10=(strpos(gnn,"BOTULINUM TOXIN TYPE F")!=0)
gen	 muscle11=(strpos(gnn,"BOTULINUM TOXINS, TYPE A")!=0)
gen	 muscle12=(strpos(gnn,"BRANAPLAM")!=0)
gen	 muscle13=(strpos(gnn,"BUCLOXIC ACID")!=0)
gen	 muscle14=(strpos(gnn,"CARISOPRODOL")!=0)
gen	 muscle15=(strpos(gnn,"CENTRAL MUSCLE RELAXANT")!=0)
gen	 muscle16=(strpos(gnn,"CHANDONIUM IODIDE")!=0)
gen	 muscle17=(strpos(gnn,"CHLORMEZANONE")!=0)
gen	 muscle18=(strpos(gnn,"CHLORPHENESIN")!=0)
gen	 muscle19=(strpos(gnn,"CHLORPROETHAZINE")!=0)
gen	 muscle20=(strpos(gnn,"CHLORZOXAZONE")!=0)
gen	 muscle21=(strpos(gnn,"CISATRACURIUM")!=0)
gen	 muscle22=(strpos(gnn,"CURARE")!=0)
gen	 muscle23=(strpos(gnn,"CYCLOBENZAPRINE")!=0)
gen	 muscle24=(strpos(gnn,"DACURONIUM")!=0)
gen	 muscle25=(strpos(gnn,"DANTROLENE")!=0)
gen	 muscle26=(strpos(gnn,"DECAMETHONIUM")!=0)
gen	 muscle27=(strpos(gnn,"DEUTOLPERISONE")!=0)
gen	 muscle28=(strpos(gnn,"DIADONIUM")!=0)
gen	 muscle29=(strpos(gnn,"DIAZEPAM")!=0)
gen	 muscle30=(strpos(gnn,"DIHYDRO BETA ERYTHROIDINE")!=0)
gen	 muscle31=(strpos(gnn,"DIMETHYLTUBOCURARINE")!=0)
gen	 muscle32=(strpos(gnn,"DIRECTLY ACTING MUSCLE RELAXANT")!=0)
gen	 muscle33=(strpos(gnn,"DOMOIC ACID")!=0)
gen	 muscle34=(strpos(gnn,"DOXACURIUM")!=0)
gen	 muscle35=(strpos(gnn,"DUADOR")!=0)
gen	 muscle36=(strpos(gnn,"EPERISONE")!=0)
gen	 muscle37=(strpos(gnn,"ETHYLCHOLINE AZIRIDINIUM")!=0)
gen	 muscle38=(strpos(gnn,"FAZADINIUM")!=0)
gen	 muscle39=(strpos(gnn,"FEBARBAMATE")!=0)
gen	 muscle40=(strpos(gnn,"FLUDIAZEPAM")!=0)
gen	 muscle41=(strpos(gnn,"FLUMETRAMIDE")!=0)
gen	 muscle42=(strpos(gnn,"GALLAMINE")!=0)
gen	 muscle43=(strpos(gnn,"GANTACURIUM")!=0)
gen	 muscle44=(strpos(gnn,"GRAYANOTOXIN I")!=0)
gen	 muscle45=(strpos(gnn,"GUAIFENESIN")!=0)
gen	 muscle46=(strpos(gnn,"HEXAFLURONIUM BROMIDE")!=0)
gen	 muscle47=(strpos(gnn,"IDROCILAMIDE")!=0)
gen	 muscle48=(strpos(gnn,"INAPERISONE")!=0)
gen	 muscle49=(strpos(gnn,"INCOBOTULINUMTOXINA")!=0)
gen	 muscle50=(strpos(gnn,"LANPERISONE")!=0)
gen	 muscle51=(strpos(gnn,"LORAZEPAM")!=0)
gen	 muscle52=(strpos(gnn,"MEBEZONIUM IODIDE")!=0)
gen	 muscle53=(strpos(gnn,"MEDAZEPAM")!=0)
gen	 muscle54=(strpos(gnn,"MEPHENESIN")!=0)
gen	 muscle55=(strpos(gnn,"MEPROBAMATE")!=0)
gen	 muscle56=(strpos(gnn,"METAXALONE")!=0)
gen	 muscle57=(strpos(gnn,"METHOCARBAMOL")!=0)
gen	 muscle58=(strpos(gnn,"METOCURINE")!=0)
gen	 muscle59=(strpos(gnn,"MIVACURIUM")!=0)
gen	 muscle60=(strpos(gnn,"NEFOPAM")!=0)
gen	 muscle61=(strpos(gnn,"NELEZAPRINE")!=0)
gen	 muscle62=(strpos(gnn,"NEOSAXITOXIN")!=0)
gen	 muscle63=(strpos(gnn,"NORGESIC")!=0)
gen	 muscle64=(strpos(gnn,"ORPHENADRINE")!=0)
gen	 muscle65=(strpos(gnn,"PANCURONIUM")!=0)
gen	 muscle66=(strpos(gnn,"PHENPROBAMATE")!=0)
gen	 muscle67=(strpos(gnn,"PIPECURONIUM")!=0)
gen	 muscle68=(strpos(gnn,"PROMOXOLANE")!=0)
gen	 muscle69=(strpos(gnn,"PYRANTEL")!=0)
gen	 muscle70=(strpos(gnn,"PYROCURINE")!=0)
gen	 muscle71=(strpos(gnn,"QUININE")!=0)
gen	 muscle72=(strpos(gnn,"RAPACURONIUM")!=0)
gen	 muscle73=(strpos(gnn,"RILMAKALIM")!=0)
gen	 muscle74=(strpos(gnn,"RISDIPLAM")!=0)
gen	 muscle75=(strpos(gnn,"ROCURONIUM")!=0)
gen	 muscle76=(strpos(gnn,"SILPERISONE")!=0)
gen	 muscle77=(strpos(gnn,"STYRAMATE")!=0)
gen	 muscle78=(strpos(gnn,"SUCCINYLCHOLINE")!=0)
gen	 muscle79=(strpos(gnn,"SUXAMETHONIUM")!=0)
gen	 muscle80=(strpos(gnn,"TAIPOXIN")!=0)
gen	 muscle81=(strpos(gnn,"TETANUS TOXIN FRAGMENT C")!=0)
gen	 muscle82=(strpos(gnn,"TETRAZEPAM")!=0)
gen	 muscle83=(strpos(gnn,"THIOCOLCHICOSIDE")!=0)
gen	 muscle84=(strpos(gnn,"TIEMONIUM METHYLSULFATE")!=0)
gen	 muscle85=(strpos(gnn,"TIZANIDINE")!=0)
gen	 muscle86=(strpos(gnn,"TOLPERISONE")!=0)
gen	 muscle87=(strpos(gnn,"TOXIFERINE")!=0)
gen	 muscle88=(strpos(gnn,"TUBOCURARINE")!=0)
gen	 muscle89=(strpos(gnn,"VECURONIUM")!=0)
gen	 muscle90=(strpos(gnn,"VESAMICOL")!=0)
gen	 muscle91=(strpos(gnn,"XYLAZINE")!=0)
gen	 muscle92=(strpos(gnn,"ZOXAZOLAMINE")!=0)   
		gen  muscle_rx=( ///	
muscle1+	///
muscle2+	///
muscle3+	///
muscle4+	///
muscle5+	///
muscle6+	///
muscle7+	///
muscle8+	///
muscle9+	///
muscle10+	///
muscle11+	///
muscle12+	///
muscle13+	///
muscle14+	///
muscle15+	///
muscle16+	///
muscle17+	///
muscle18+	///
muscle19+	///
muscle20+	///
muscle21+	///
muscle22+	///
muscle23+	///
muscle24+	///
muscle25+	///
muscle26+	///
muscle27+	///
muscle28+	///
muscle29+	///
muscle30+	///
muscle31+	///
muscle32+	///
muscle33+	///
muscle34+	///
muscle35+	///
muscle36+	///
muscle37+	///
muscle38+	///
muscle39+	///
muscle40+	///
muscle41+	///
muscle42+	///
muscle43+	///
muscle44+	///
muscle45+	///
muscle46+	///
muscle47+	///
muscle48+	///
muscle49+	///
muscle50+	///
muscle51+	///
muscle52+	///
muscle53+	///
muscle54+	///
muscle55+	///
muscle56+	///
muscle57+	///
muscle58+	///
muscle59+	///
muscle60+	///
muscle61+	///
muscle62+	///
muscle63+	///
muscle64+	///
muscle65+	///
muscle66+	///
muscle67+	///
muscle68+	///
muscle69+	///
muscle70+	///
muscle71+	///
muscle72+	///
muscle73+	///
muscle74+	///
muscle75+	///
muscle76+	///
muscle77+	///
muscle78+	///
muscle79+	///
muscle80+	///
muscle81+	///
muscle82+	///
muscle83+	///
muscle84+	///
muscle85+	///
muscle86+	///
muscle87+	///
muscle88+	///
muscle89+	///
muscle90+	///
muscle91+	///
muscle92	///
>0)
keep usrds_id srvc_dt muscle_rx 
duplicates drop
quietly compress
save `pde`y'bc', replace
	}
}

forvalues `year' {
		 capture append using `pde`y'bc'
}
save 22_musclerelaxants_expR.dta,replace
di "$S_TIME"
