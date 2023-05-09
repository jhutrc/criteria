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
gen	h2ant3=(strpos(gnn,"CIMETIDINE")!=0)
gen	h2ant8=(strpos(gnn,"FAMOTIDINE")!=0)
gen	h2ant18=(strpos(gnn,"NIZATIDINE")!=0)
gen	h2ant23=(strpos(gnn,"RANITIDINE")!=0)        
gen  h2ant_rx=( ///	
h2ant3+	///
h2ant8+	///
h2ant18+	///
h2ant23	///
>0)
keep usrds_id srvc_dt h2ant_rx 
duplicates drop
quietly compress
save `pde`y'bc', replace
	}
}

forvalues `year' {
		 capture append using `pde`y'bc'
}
save 29_h2rblockers_expR.dta,replace
di "$S_TIME"
