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
gen	a1block27=(strpos(gnn,"DOXAZOSIN")!=0)
gen	a1block60=(strpos(gnn,"PRAZOSIN")!=0)
gen	a1block69=(strpos(gnn,"TERAZOSIN")!=0)      
		gen  a1block_rx=( ///	
a1block27+	///
a1block60+	///
a1block69	///
>0)
keep usrds_id srvc_dt a1block_rx 
duplicates drop
quietly compress
save `pde`y'bc', replace
	}
}

forvalues `year' {
		 capture append using `pde`y'bc'
}
save 26_alpha1blockers_expR.dta,replace
di "$S_TIME"
