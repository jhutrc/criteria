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
gen	 ssri1=(strpos(gnn,"ALAPROCLATE")!=0)
gen	 ssri2=(strpos(gnn,"AMITIFADINE")!=0)
gen	 ssri3=(strpos(gnn,"AMITRIPTYLINE")!=0)
gen	 ssri4=(strpos(gnn,"AMOXAPINE")!=0)
gen	 ssri5=(strpos(gnn,"AMPRELOXETINE")!=0)
gen	 ssri6=(strpos(gnn,"BICIFADINE")!=0)
gen	 ssri7=(strpos(gnn,"BRASOFENSINE")!=0)
gen	 ssri8=(strpos(gnn,"CENTANAFADINE")!=0)
gen	 ssri9=(strpos(gnn,"CERICLAMINE")!=0)
gen	 ssri10=(strpos(gnn,"CHLORPHENTERMINE")!=0)
gen	 ssri11=(strpos(gnn,"CITALOPRAM")!=0)
gen	 ssri12=(strpos(gnn,"CLOMIPRAMINE")!=0)
gen	 ssri13=(strpos(gnn,"COCAINE")!=0)
gen	 ssri14=(strpos(gnn,"DAPOXETINE")!=0)
gen	 ssri15=(strpos(gnn,"DESVENLAFAXINE")!=0)
gen	 ssri16=(strpos(gnn,"DEUDEXTROMETHORPHAN")!=0)
gen	 ssri17=(strpos(gnn,"DICLOFENSINE")!=0)
gen	 ssri18=(strpos(gnn,"DOXEPIN")!=0)
gen	 ssri19=(strpos(gnn,"DULOXETINE")!=0)
gen	 ssri20=(strpos(gnn,"ESCITALOPRAM")!=0)
gen	 ssri21=(strpos(gnn,"FEMOXETINE")!=0)
gen	 ssri22=(strpos(gnn,"FENFLURAMINE")!=0)
gen	 ssri23=(strpos(gnn,"FLUOXETINE")!=0)
gen	 ssri24=(strpos(gnn,"FLUVOXAMINE")!=0)
gen	 ssri25=(strpos(gnn,"HYDROXYNEFAZODONE")!=0)
gen	 ssri26=(strpos(gnn,"HYPERFORIN")!=0)
gen	 ssri27=(strpos(gnn,"IFOXETINE")!=0)
gen	 ssri28=(strpos(gnn,"IMIPRAMINE")!=0)
gen	 ssri29=(strpos(gnn,"INDALPINE")!=0)
gen	 ssri30=(strpos(gnn,"INDATRALINE")!=0)
gen	 ssri31=(strpos(gnn,"LIAFENSINE")!=0)
gen	 ssri32=(strpos(gnn,"LITOXETINE")!=0)
gen	 ssri33=(strpos(gnn,"LUBAZODONE")!=0)
gen	 ssri34=(strpos(gnn,"MEDIFOXAMINE")!=0)
gen	 ssri35=(strpos(gnn,"METHAMPHETAMINE")!=0)
gen	 ssri36=(strpos(gnn,"MILNACIPRAN")!=0)
gen	 ssri37=(strpos(gnn,"MOXIFETIN")!=0)
gen	 ssri38=(strpos(gnn,"NEFAZODONE")!=0)
gen	 ssri39=(strpos(gnn,"NEFOPAM")!=0)
gen	 ssri40=(strpos(gnn,"NOMELIDINE")!=0)
gen	 ssri41=(strpos(gnn,"NORCITALOPRAM")!=0)
gen	 ssri42=(strpos(gnn,"NORFENFLURAMINE")!=0)
gen	 ssri43=(strpos(gnn,"NORFLUOXETINE")!=0)
gen	 ssri44=(strpos(gnn,"NORSERTRALINE")!=0)
gen	 ssri45=(strpos(gnn,"OLANZAPINE")!=0)
gen	 ssri46=(strpos(gnn,"OMILOXETINE")!=0)
gen	 ssri47=(strpos(gnn,"PAROXETINE")!=0)
gen	 ssri48=(strpos(gnn,"SEROTONIN NORADRENALIN REUPTAKE INHIBITOR")!=0)
gen	 ssri49=(strpos(gnn,"SERTRALINE")!=0)
gen	 ssri50=(strpos(gnn,"SIBUTRAMINE")!=0)
gen	 ssri51=(strpos(gnn,"TEDATIOXETINE")!=0)
gen	 ssri52=(strpos(gnn,"TESOFENSINE")!=0)
gen	 ssri53=(strpos(gnn,"TRAZODONE")!=0)
gen	 ssri54=(strpos(gnn,"TRIPLE REUPTAKE INHIBITOR")!=0)
gen	 ssri55=(strpos(gnn,"VENLAFAXINE")!=0)
gen	 ssri56=(strpos(gnn,"VILAZODONE")!=0)
gen	 ssri57=(strpos(gnn,"VORTIOXETINE")!=0)
gen	 ssri58=(strpos(gnn,"ZIMELDINE")!=0)
		gen  ssri_rx=( ///	
ssri1+	///
ssri2+	///
ssri3+	///
ssri4+	///
ssri5+	///
ssri6+	///
ssri7+	///
ssri8+	///
ssri9+	///
ssri10+	///
ssri11+	///
ssri12+	///
ssri13+	///
ssri14+	///
ssri15+	///
ssri16+	///
ssri17+	///
ssri18+	///
ssri19+	///
ssri20+	///
ssri21+	///
ssri22+	///
ssri23+	///
ssri24+	///
ssri25+	///
ssri26+	///
ssri27+	///
ssri28+	///
ssri29+	///
ssri30+	///
ssri31+	///
ssri32+	///
ssri33+	///
ssri34+	///
ssri35+	///
ssri36+	///
ssri37+	///
ssri38+	///
ssri39+	///
ssri40+	///
ssri41+	///
ssri42+	///
ssri43+	///
ssri44+	///
ssri45+	///
ssri46+	///
ssri47+	///
ssri48+	///
ssri49+	///
ssri50+	///
ssri51+	///
ssri52+	///
ssri53+	///
ssri54+	///
ssri55+	///
ssri56+	///
ssri57+	///
ssri58	///
>0)
keep usrds_id srvc_dt ssri_rx 
duplicates drop
quietly compress
save `pde`y'bc', replace
	}
}

forvalues `year' {
		 capture append using `pde`y'bc'
}
save 35_ssri_expR.dta,replace
di "$S_TIME"
