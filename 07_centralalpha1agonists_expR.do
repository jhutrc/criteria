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
gen	cena1ag9=(strpos(gnn,"CLONIDINE")!=0)
gen	cena1ag16=(strpos(gnn,"GUANABENZ")!=0)
gen	cena1ag17=(strpos(gnn,"GUANFACINE")!=0)
gen	cena1ag24=(strpos(gnn,"METHYLDOPA")!=0)
gen	cena1ag52=(strpos(gnn,"RESERPINE")!=0)      
		gen  cena1ag_rx=( ///	
cena1ag9+	///
cena1ag16+	///
cena1ag17+	///
cena1ag24+	///
cena1ag52	///
>0)
keep usrds_id srvc_dt cena1ag_rx 
duplicates drop
quietly compress
save `pde`y'bc', replace
	}
}

forvalues `year' {
		 capture append using `pde`y'bc'
}
save 07_centralalpha1agonists_expR.dta,replace
di "$S_TIME"
