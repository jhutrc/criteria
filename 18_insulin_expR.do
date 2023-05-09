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
gen	 insulin1=(strpos(gnn,"ACTRAPID MC")!=0)
gen	 insulin2=(strpos(gnn,"CHAIN, INSULIN B")!=0)
gen	 insulin3=(strpos(gnn,"CROSS LINKED INSULIN")!=0)
gen	 insulin4=(strpos(gnn,"DESTRIPEPTIDE INSULIN")!=0)
gen	 insulin5=(strpos(gnn,"FISH INSULIN")!=0)
gen	 insulin6=(strpos(gnn,"HUMILIN")!=0)
gen	 insulin7=(strpos(gnn,"ILETIN")!=0)
gen	 insulin8=(strpos(gnn,"IMMUNOINSULIN")!=0)
gen	 insulin9=(strpos(gnn,"INITARD")!=0)
gen	 insulin10=(strpos(gnn,"INSULIN")!=0)
gen	 insulin11=(strpos(gnn,"INSULIN A CHAIN")!=0)
gen	 insulin12=(strpos(gnn,"INSULIN ASPART")!=0)
gen	 insulin13=(strpos(gnn,"INSULIN B CHAIN")!=0)
gen	 insulin14=(strpos(gnn,"INSULIN DEGLUDEC")!=0)
gen	 insulin15=(strpos(gnn,"INSULIN DETEMIR")!=0)
gen	 insulin16=(strpos(gnn,"INSULIN GLARGINE")!=0)
gen	 insulin17=(strpos(gnn,"INSULIN GLULISINE")!=0)
gen	 insulin18=(strpos(gnn,"INSULIN HNC")!=0)
gen	 insulin19=(strpos(gnn,"INSULIN HUMAN INHALED")!=0)
gen	 insulin20=(strpos(gnn,"INSULIN HUMAN ISOPHANE (NPH)")!=0)
gen	 insulin21=(strpos(gnn,"INSULIN HUMAN REGULAR")!=0)
gen	 insulin22=(strpos(gnn,"INSULIN LISPRO")!=0)
gen	 insulin23=(strpos(gnn,"INSULIN NOVO ACTRAPID")!=0)
gen	 insulin24=(strpos(gnn,"INSULIN SNC")!=0)
gen	 insulin25=(strpos(gnn,"INSULINA PRONTA LILLY")!=0)
gen	 insulin26=(strpos(gnn,"INSULINE")!=0)
gen	 insulin27=(strpos(gnn,"INSULINUM")!=0)
gen	 insulin28=(strpos(gnn,"IODINATED INSULIN")!=0)
gen	 insulin29=(strpos(gnn,"ISOPHANE INSULIN, HUMAN")!=0)
gen	 insulin30=(strpos(gnn,"ISZILIN")!=0)
gen	 insulin31=(strpos(gnn,"MAXIRAPID")!=0)
gen	 insulin32=(strpos(gnn,"MONOTARD HUMAN")!=0)
gen	 insulin33=(strpos(gnn,"MONOTARD INSULIN")!=0)
gen	 insulin34=(strpos(gnn,"NEUSULIN")!=0)
gen	 insulin35=(strpos(gnn,"NOVOLIN")!=0)
gen	 insulin36=(strpos(gnn,"ORALIN")!=0)
gen	 insulin37=(strpos(gnn,"ORO INSULIN")!=0)
gen	 insulin38=(strpos(gnn,"REGULAR INSULIN")!=0)
gen	 insulin39=(strpos(gnn,"SODIUM INSULIN")!=0)
gen	 insulin40=(strpos(gnn,"SOLUBLE INSULIN")!=0)
gen	 insulin41=(strpos(gnn,"TELEOST INSULIN")!=0)       
		gen  insulin_rx=( ///	
insulin1+	///
insulin2+	///
insulin3+	///
insulin4+	///
insulin5+	///
insulin6+	///
insulin7+	///
insulin8+	///
insulin9+	///
insulin10+	///
insulin11+	///
insulin12+	///
insulin13+	///
insulin14+	///
insulin15+	///
insulin16+	///
insulin17+	///
insulin18+	///
insulin19+	///
insulin20+	///
insulin21+	///
insulin22+	///
insulin23+	///
insulin24+	///
insulin25+	///
insulin26+	///
insulin27+	///
insulin28+	///
insulin29+	///
insulin30+	///
insulin31+	///
insulin32+	///
insulin33+	///
insulin34+	///
insulin35+	///
insulin36+	///
insulin37+	///
insulin38+	///
insulin39+	///
insulin40+	///
insulin41	///
>0)
keep usrds_id srvc_dt insulin_rx 
duplicates drop
quietly compress
save `pde`y'bc', replace
	}
}

forvalues `year' {
		 capture append using `pde`y'bc'
}
save 18_insulin_expR.dta,replace
di "$S_TIME"
