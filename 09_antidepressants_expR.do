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
gen	antidep9=(strpos(gnn,"AMITRIPTYLINE")!=0)
gen	antidep10=(strpos(gnn,"AMOXAPINE")!=0)
gen	antidep30=(strpos(gnn,"CLOMIPRAMINE")!=0)
gen	antidep40=(strpos(gnn,"DESIPRAMINE")!=0)
gen	antidep48=(strpos(gnn,"DOXEPIN")!=0)
gen	antidep72=(strpos(gnn,"IMIPRAMINE")!=0)
gen	antidep102=(strpos(gnn,"NORTRIPTYLINE")!=0)
gen	antidep111=(strpos(gnn,"PAROXETINE")!=0)
gen	antidep120=(strpos(gnn,"PROTRIPTYLINE")!=0)
gen	antidep149=(strpos(gnn,"TRIMIPRAMINE")!=0)
		gen  antidep_rx=( ///	
antidep9+	///
antidep10+	///
antidep30+	///
antidep40+	///
antidep48+	///
antidep72+	///
antidep102+	///
antidep111+	///
antidep120+	///
antidep149	///
>0)
keep usrds_id srvc_dt antidep_rx 
duplicates drop
quietly compress
save `pde`y'bc', replace
	}
}

forvalues `year' {
		 capture append using `pde`y'bc'
}
save 09_antidepressants_expR.dta,replace
di "$S_TIME"
