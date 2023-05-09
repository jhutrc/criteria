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
gen	tca4=(strpos(gnn,"AMITRIPTYLINE")!=0)
gen	tca7=(strpos(gnn,"BUTRIPTYLINE")!=0)
gen	tca9=(strpos(gnn,"CLOMIPRAMINE")!=0)
gen	tca19=(strpos(gnn,"DOXEPIN")!=0)
gen	tca17=(strpos(gnn,"DOSULEPIN")!=0)
gen	tca21=(strpos(gnn,"IMIPRAMINE")!=0)
gen	tca42=(strpos(gnn,"TRIMIPRAMINE")!=0)   
		gen  tca_rx=( ///	
tca4+	///
tca7+	///
tca9+	///
tca17+	///
tca19+	///
tca21+	///
tca42	///
>0)
keep usrds_id srvc_dt tca_rx 
duplicates drop
quietly compress
save `pde`y'bc', replace
	}
}

forvalues `year' {
		 capture append using `pde`y'bc'
}
save 27_tca_expR.dta,replace
di "$S_TIME"
