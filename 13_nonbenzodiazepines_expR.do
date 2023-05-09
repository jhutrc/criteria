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
gen	nonbenzo11=(strpos(gnn,"ESTAZOLAM")!=0) //this is a benzo!!!!
gen	nonbenzo54=(strpos(gnn,"ZALEPLON")!=0)
gen	nonbenzo68=(strpos(gnn,"ZOLPIDEM")!=0)
		gen  nonbenzo_rx=( ///	
nonbenzo11+	///
nonbenzo54+	///
nonbenzo68	///
>0)
keep usrds_id srvc_dt nonbenzo_rx 
duplicates drop
quietly compress
save `pde`y'bc', replace
	}
}

forvalues `year' {
		 capture append using `pde`y'bc'
}
save 13_nonbenzodiazepines_expR.dta,replace
di "$S_TIME"
