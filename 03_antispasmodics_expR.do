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
gen	antispasm11=(strpos(gnn,"ATROPINE")!=0)
gen	antispasm20=(strpos(gnn,"CLIDINIUM")!=0)
gen	antispasm26=(strpos(gnn,"DICYCLOMINE")!=0)
gen	antispasm47=(strpos(gnn,"HYOSCYAMINE")!=0)
gen	antispasm55=(strpos(gnn,"METHSCOPOLAMINE")!=0)
gen	antispasm68=(strpos(gnn,"PROPANTHELINE")!=0)
gen	antispasm73=(strpos(gnn,"SCOPOLAMINE")!=0)
		gen  antispasm_rx=( ///	
antispasm11+	///
antispasm20+	///
antispasm26+	///
antispasm47+	///
antispasm55+	///
antispasm68+	///
antispasm73	///
>0)
keep usrds_id srvc_dt antispasm_rx 
duplicates drop
quietly compress
save `pde`y'bc', replace
	}
}

forvalues `year' {
		 capture append using `pde`y'bc'
}
save 03_antispasmodics_expR.dta,replace
di "$S_TIME"
